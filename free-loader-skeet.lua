-- free scriptleaks loader 
-- discord: https://discord.gg/GycDxWHUx5 
-- telegram: https://t.me/scriptleakslol

-- ONLY RETARDS CHANGE THIS LINKS
-- ONLY RETARDS CHANGE THIS LINKS
-- ONLY RETARDS CHANGE THIS LINKS
-- ONLY RETARDS CHANGE THIS LINKS

local http = require "gamesense/http"

local loader

local github = {} do
    github.tree_url = "https://api.github.com/repos/wyscigufa9/scriptleaks/git/trees/main?recursive=1"
    github.raw_url = "https://raw.githubusercontent.com/wyscigufa9/scriptleaks/main/"

    function github:get_scripts(callback)
        http.get(self.tree_url, function(success, response)
            if not success or not response or not response.body then
                return callback(nil, "failed to fetch repository")
            end

            local data = json.parse(response.body)
            local scripts = {}

            for _, entry in ipairs(data.tree or {}) do
                if entry.type == "blob"
                and entry.path:sub(1, 8) == "gs-luas/"
                and entry.path:sub(-4):lower() == ".lua" then
                    scripts[#scripts + 1] = {
                        name = entry.path:match("([^/]+)%.lua$"),
                        path = entry.path,
                        sha = entry.sha
                    }
                end
            end

            table.sort(scripts, function(a, b)
                return a.name:lower() < b.name:lower()
            end)

            callback(scripts)
        end)
    end

    function github:download(script, callback)
        http.get(self.raw_url .. script.path, function(success, response)
            if not success or not response or not response.body then
                print(response.body)
                return callback(nil, "failed to download script")
            end

            callback(response.body)
        end)
    end
end

local autoload = {} do
    autoload.key = "scriptleaks.autoload"
    autoload.scripts = database.read(autoload.key) or {}

    function autoload:contains(path)
        return self.scripts[path] == true
    end

    function autoload:add(script)
        self.scripts[script.path] = true
        database.write(self.key, self.scripts)
    end

    function autoload:remove(script)
        self.scripts[script.path] = nil
        database.write(self.key, self.scripts)
    end

    function autoload:clear()
        self.scripts = {}
        database.write(self.key, self.scripts)
    end
end

local menu = {} do
    menu.items = {}
    menu.last_index = -1
    menu.last_click = 0

    menu.links = {
        {
            type = "link",
            name = "Discord",
            icon = "",
            url = "https://discord.gg/GycDxWHUx5"
        },
        {
            type = "link",
            name = "Telegram",
            icon = "",
            url = "https://t.me/scriptleakslol"
        }
    }

    menu.menu_color_ref = ui.reference("Misc", "Settings", "Menu color")
    menu.list = ui.new_listbox("LUA", "B", "ScriptLeaks", {" Discord", " Telegram"})

    menu.clear = ui.new_button("LUA", "B", "Clear autoload", function()
        autoload:clear()
        menu:update_icons()
    end)

    menu.status = ui.new_label("LUA", "B", "\ab7b775ff Double click to load/unload selected item")

    function menu:add_link(link)
        self.items[#self.items + 1] = {
            type = "link",
            name = link.name,
            icon = link.icon,
            url = link.url
        }
    end

    function menu:add_script(script)
        self.items[#self.items + 1] = {
            type = "script",
            name = script.name,
            path = script.path,
            sha = script.sha
        }
    end

    function menu:get_display_name(item)
        if item.type == "link" then
            return "\aCDCDCDFF" .. item.icon .. " " .. item.name
        end

        local r, g, b, a = ui.get(self.menu_color_ref)

        if autoload:contains(item.path) then
            local color = string.format("\a%02X%02X%02XFF", r, g, b)
            return color .. "" .. "\aCDCDCDFF " .. item.name
        end

        return "\aFF8080FF \aCDCDCDFF" .. item.name
    end

    function menu:update(scripts)
        self.items = {}

        for _, link in ipairs(self.links) do
            self:add_link(link)
        end

        for _, script in ipairs(scripts) do
            self:add_script(script)
        end

        self:update_icons()
    end

    function menu:update_icons()
        local names = {}

        for i, item in ipairs(self.items) do
            names[i] = self:get_display_name(item)
        end

        local selected = ui.get(self.list)

        ui.update(self.list, names)

        if selected and selected >= 0 and selected < #names then
            ui.set(self.list, selected)
        end
    end

    function menu:activate(index)
        local item = self.items[index + 1]

        if not item then
            return
        end

        if item.type == "link" then
            panorama.open().SteamOverlayAPI.OpenExternalBrowserURL(item.url)
            return
        end

        if autoload:contains(item.path) then
            autoload:remove(item)

            client.reload_active_scripts()
            return
        end

        loader:execute(item)
    end

    function menu:click()
        local index = ui.get(self.list)

        if index == nil or index < 0 then
            return
        end

        local time = globals.realtime()

        if self.last_index == index and time - self.last_click <= 0.35 then
            self:activate(index)

            self.last_index = -1
            self.last_click = 0

            return
        end

        self.last_index = index
        self.last_click = time
    end
end

loader = {} do
    function loader:execute(script)
        github:download(script, function(source, err)
            if not source then
                return
            end

            local fn, compile_error = loadstring(source)

            if not fn then
                client.log("[ScriptLeaks] " .. tostring(compile_error))
                return
            end

            fn()

            autoload:add(script)
            menu:update_icons()
        end)
    end
end

local startup = {} do
    function startup:load_saved(scripts)
        local loaded = 0

        for _, script in ipairs(scripts) do
            if autoload:contains(script.path) then
                github:download(script, function(source)
                    if not source then
                        return
                    end

                    local fn = loadstring(source)

                    if not fn then
                        return
                    end

                    fn()

                    loaded = loaded + 1
                    menu:update_icons()
                end)
            end
        end
    end
end

ui.set_callback(menu.list, function()
    menu:click()
end)

github:get_scripts(function(scripts, err)
    if not scripts then
        return
    end

    menu:update(scripts)
    startup:load_saved(scripts)
end)