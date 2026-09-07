local monstry_data = _G.monstry_fetch and _G.monstry_fetch() or {}

local nick_name = monstry_data.username and monstry_data.username or "scriptleaks"

local anoflow = {}

if not LPH_OBFUSCATED then
    LPH_JIT = function(...) return ... end
    LPH_JIT_MAX = function(...) return ... end
    SOLYX_VIRTUALIZE = function(...) return ... end
end

local lua_name, lua_color, script_build, altrue, m_out_pos, m_time, m_alpha, panel_height, panel_offset, panel_color, text_color = "anoflow", {r = 255, g = 255, b = 255}, "[nebula]", true, { ui.menu_position() }, globals.realtime(), 0, 25, 5, { 25, 25, 25, 200 }, { 255, 255, 255, 255 }
local
event_callback,
 unset_event_callback,
  label,
   switch,
    combo,
     slider,
      multi,
       tickcount,
        ref_ui =
        client.set_event_callback, client.unset_event_callback, ui.new_label, ui.new_checkbox, ui.new_combobox, ui.new_slider, ui.new_multiselect, globals.tickcount, ui.reference
        
function try_require(module, msg)
    local success, result = pcall(require, module)
    if success then return result else return error(msg) end
end
a = function (...) return ... end

local config_system = {}--require("bui") or {}
local set_brute = false
local tooltips = {
    delay = {[1] = "GS"},
    delay_2 = {[2] = "Off", [3] = "Random"},
    bt = {[1] = "Small", [2] = "Medium", [3] = "Maximum", [4] = "Extreme"},
    def = {[14] = "Always on", [1] = "Flick", },
    pitch = {[-89] = "Up", [0] = "Zero", [89] = "Down"},
    body = {[-2] = "Full Left", [-1] = "Left", [0] = "None", [1] = "Right", [2] = "Full Light"},
    backtrack = {[2] = "Default", [7] = "Maximum"},
    predict = {[1] = "Head", [2] = "Chest", [3] = "Legs"},
    lethal = {[92] = "Lethal"},
    viewmodel_fov = {[68] = "Fov"},
    viewmodel_x = {[0] = "X"},
    viewmodel_y = {[0] = "Y"},
    viewmodel_z = {[0] = "Z"}
}
local json = require("json")
local pui = require("gamesense/pui")

math.lerp = function (a, b, w) return a + (b - a) * w end
bit, base64, antiaim_funcs, ffi, vector, http, clipboard, c_ent, csgo_weapons, steamworks, surface = try_require("bit"), try_require("gamesense/base64"), try_require("gamesense/antiaim_funcs"), try_require("ffi"), try_require("vector", "Missing vector"), try_require("gamesense/http"), try_require("gamesense/clipboard", "Download Clipboard library: https://gamesense.pub/forums/viewtopic.php?id=28678"), try_require("gamesense/entity", "Download Entity Object library: https://gamesense.pub/forums/viewtopic.php?id=27529"), try_require("gamesense/csgo_weapons", "Download CS:GO weapon data library: https://gamesense.pub/forums/viewtopic.php?id=18807"), try_require("gamesense/steamworks"), try_require("gamesense/surface")
ease = try_require("gamesense/easing")
client.delay_call(0.1, function()
    client.color_log(255,255,255, "scriptleaks https://discord.gg/wQvAYFbnE7")
end)

function ui.multiReference(tab, groupbox, name)
    local ref1, ref2, ref3 = ref_ui(tab, groupbox, name)
    return { ref1, ref2, ref3 }
end
-- function get_glow_color()
--     glow_time = glow_time + globals.frametime() * 2
--     local r = math.floor(128 + 127 * math.sin(glow_time))
--     local g = math.floor(128 + 127 * math.sin(glow_time + 2))
--     local b = math.floor(128 + 127 * math.sin(glow_time + 4))
--     return r, g, b
-- end
local rounding, o = 7, 20
local rad, n = rounding + 2, 45
local RoundedRect = function(x, y, w, h, radius, r, g, b, a) renderer.rectangle(x+radius,y,w-radius*2,radius,r,g,b,a)renderer.rectangle(x,y+radius,radius,h-radius*2,r,g,b,a)renderer.rectangle(x+radius,y+h-radius,w-radius*2,radius,r,g,b,a)renderer.rectangle(x+w-radius,y+radius,radius,h-radius*2,r,g,b,a)renderer.rectangle(x+radius,y+radius,w-radius*2,h-radius*2,r,g,b,a)renderer.circle(x+radius,y+radius,r,g,b,a,radius,180,0.25)renderer.circle(x+w-radius,y+radius,r,g,b,a,radius,90,0.25)renderer.circle(x+radius,y+h-radius,r,g,b,a,radius,270,0.25)renderer.circle(x+w-radius,y+h-radius,r,g,b,a,radius,0,0.25) end
local OutlineGlow = function(x, y, w, h, radius, r, g, b, a) renderer.rectangle(x+2,y+radius+rad,1,h-rad*2-radius*2,r,g,b,a)renderer.rectangle(x+w-3,y+radius+rad,1,h-rad*2-radius*2,r,g,b,a)renderer.rectangle(x+radius+rad,y+2,w-rad*2-radius*2,1,r,g,b,a)renderer.rectangle(x+radius+rad,y+h-3,w-rad*2-radius*2,1,r,g,b,a)renderer.circle_outline(x+radius+rad,y+radius+rad,r,g,b,a,radius+rounding,180,0.25,1)renderer.circle_outline(x+w-radius-rad,y+radius+rad,r,g,b,a,radius+rounding,270,0.25,1)renderer.circle_outline(x+radius+rad,y+h-radius-rad,r,g,b,a,radius+rounding,90,0.25,1)renderer.circle_outline(x+w-radius-rad,y+h-radius-rad,r,g,b,a,radius+rounding,0,0.25,1) end
local FadedRoundedGlow = function(x, y, w, h, radius, r, g, b, a, glow, r1, g1, b1) local n=a/255*n;renderer.rectangle(x+radius,y,w-radius*2,1,r,g,b,n)renderer.circle_outline(x+radius,y+radius,r,g,b,n,radius,180,0.25,1)renderer.circle_outline(x+w-radius,y+radius,r,g,b,n,radius,270,0.25,1)renderer.rectangle(x,y+radius,1,h-radius*2,r,g,b,n)renderer.rectangle(x+w-1,y+radius,1,h-radius*2,r,g,b,n)renderer.circle_outline(x+radius,y+h-radius,r,g,b,n,radius,90,0.25,1)renderer.circle_outline(x+w-radius,y+h-radius,r,g,b,n,radius,0,0.25,1)renderer.rectangle(x+radius,y+h-1,w-radius*2,1,r,g,b,n) for radius=4,glow do local radius=radius/2;OutlineGlow(x-radius,y-radius,w+radius*2,h+radius*2,radius,r1,g1,b1,glow-radius*2)end end
local container_glow = function(x, y, w, h, r, g, b, a, alpha,r1, g1, b1, fn)RoundedRect(x,y,w,h,rounding,17,17,17,a)FadedRoundedGlow(x,y,w,h,rounding,r,g,b,alpha*255,alpha*o,r1,g1,b1)if not fn then return end;fn(x+rounding,y+rounding,w-rounding*2,h-rounding*2.0) end


local menu_c = ui.reference("MISC", "Settings", "Menu color")
menu_r, menu_g, menu_b, menu_a = ui.get(menu_c)
    
ui.set_callback(menu_c, function()
    menu_r, menu_g, menu_b, menu_a = ui.get(menu_c)
end)


is_peeking = function ()
    local me = entity.get_local_player()
    if not me then return end
    local enemies = entity.get_players(true)
    if not enemies then
        return false
    end

    local predict_amt = math.random(0.01, 0.2)
    local eye_position = vector(client.eye_position())
    local velocity_prop_local = vector(entity.get_prop(me, 'm_vecVelocity'))
    local predicted_eye_position = vector(eye_position.x + velocity_prop_local.x * predict_amt, eye_position.y + velocity_prop_local.y * predict_amt, eye_position.z + velocity_prop_local.z * predict_amt)
    for i = 1, #enemies do
        local player = enemies[i]
        local velocity_prop = vector(entity.get_prop(player, 'm_vecVelocity'))
        local origin = vector(entity.get_prop(player, 'm_vecOrigin'))
        local predicted_origin = vector(origin.x + velocity_prop.x * predict_amt, origin.y + velocity_prop.y * predict_amt, origin.z + velocity_prop.z * predict_amt)
        entity.get_prop(player, 'm_vecOrigin', predicted_origin)
        local head_origin = vector(entity.hitbox_position(player, 0))
        local predicted_head_origin = vector(head_origin.x + velocity_prop.x * predict_amt, head_origin.y + velocity_prop.y * predict_amt, head_origin.z + velocity_prop.z * predict_amt)
        local trace_entity, damage = client.trace_bullet(me, predicted_eye_position.x, predicted_eye_position.y, predicted_eye_position.z, predicted_head_origin.x, predicted_head_origin.y, predicted_head_origin.z)
        entity.get_prop( player, 'm_vecOrigin', origin )
        if damage > 0 then
            return true
        end
    end
    return false
end

is_m_d = LPH_JIT(function()
    local me = entity.get_local_player()
    if not me then return end
    local enemies = entity.get_players(true)
    if not enemies then
        return false
    end

    local predict_amt = 0.2
    local eye_position = vector(client.eye_position())
    local velocity_prop_local = vector(entity.get_prop(me, 'm_vecVelocity'))
    local predicted_eye_position = vector(eye_position.x + velocity_prop_local.x * predict_amt, eye_position.y + velocity_prop_local.y * predict_amt, eye_position.z + velocity_prop_local.z * predict_amt)
    for i = 1, #enemies do
        local player = enemies[i]
        local velocity_prop = vector(entity.get_prop(player, 'm_vecVelocity'))
        local origin = vector(entity.get_prop(player, 'm_vecOrigin'))
        local predicted_origin = vector(origin.x + velocity_prop.x * predict_amt, origin.y + velocity_prop.y * predict_amt, origin.z + velocity_prop.z * predict_amt)
        entity.get_prop(player, 'm_vecOrigin', predicted_origin)
        local head_origin = vector(entity.hitbox_position(player, 0))
        local predicted_head_origin = vector(head_origin.x + velocity_prop.x * predict_amt, head_origin.y + velocity_prop.y * predict_amt, head_origin.z + velocity_prop.z * predict_amt)
        local trace_entity, damage = client.trace_bullet(me, predicted_eye_position.x, predicted_eye_position.y, predicted_eye_position.z, predicted_head_origin.x, predicted_head_origin.y, predicted_head_origin.z)
        entity.get_prop( player, 'm_vecOrigin', origin )
        if damage > 0 then
            return true
        end
    end
    return false
end)

local refs = {
    slowmotion = ref_ui("AA", "Other", "Slow motion"),
    OSAAA = ref_ui("AA", "Other", "On shot anti-aim"),
    Legmoves = ref_ui("AA", "Other", "Leg movement"),
    legit = ref_ui("LEGIT", "Aimbot", "Enabled"),
    minimum_damage_override = { ref_ui("Rage", "Aimbot", "Minimum damage override") },
    fakeDuck = ref_ui("RAGE", "Other", "Duck peek assist"),
    minimum_damage = ref_ui("Rage", "Aimbot", "Minimum damage"),
    hitChance = ref_ui("RAGE", "Aimbot", "Minimum hit chance"),
    safePoint = ref_ui("RAGE", "Aimbot", "Force safe point"),
    forceBaim = ref_ui("RAGE", "Aimbot", "Force body aim"),
    dtLimit = ref_ui("RAGE", "Aimbot", "Double tap fake lag limit"),
    quickPeek = {ref_ui("RAGE", "Other", "Quick peek assist")},
    delay_shot = {ref_ui("RAGE", "Other", "Delay shot")},
    dt = {ref_ui("RAGE", "Aimbot", "Double tap")},
    dormantEsp = ref_ui("VISUALS", "Player ESP", "Dormant"),
    air_strafe = ref_ui("Misc", "Movement", "Air strafe"),
    multi_points = ref_ui("RAGE", "Aimbot", "Multi-point scale"),
    enabled = ref_ui("AA", "Anti-aimbot angles", "Enabled"),
    pitch = {ref_ui("AA", "Anti-aimbot angles", "pitch")},
    roll = ref_ui("AA", "Anti-aimbot angles", "roll"),
    yawBase = ref_ui("AA", "Anti-aimbot angles", "Yaw base"),
    yaw = {ref_ui("AA", "Anti-aimbot angles", "Yaw")},
    flLimit = ref_ui("AA", "Fake lag", "Limit"),
    flamount = ref_ui("AA", "Fake lag", "Amount"),
    flenabled = ref_ui("AA", "Fake lag", "Enabled"),
    flVariance = ref_ui("AA", "Fake lag", "Variance"),
    AAfake = ref_ui("AA", "Other", "Fake peek"),
    fsBodyYaw = ref_ui("AA", "anti-aimbot angles", "Freestanding body yaw"),
    edgeYaw = ref_ui("AA", "Anti-aimbot angles", "Edge yaw"),
    yawJitter = {ref_ui("AA", "Anti-aimbot angles", "Yaw jitter")},
    bodyYaw = {ref_ui("AA", "Anti-aimbot angles", "Body yaw")},
    freeStand = {ref_ui("AA", "Anti-aimbot angles", "Freestanding")},
    os = {ref_ui("AA", "Other", "On shot anti-aim")},
    slow = {ref_ui("AA", "Other", "Slow motion")},
    fakeLag = {ref_ui("AA", "Fake lag", "Limit")},
    legMovement = ref_ui("AA", "Other", "Leg movement"),
    indicators = {ref_ui("VISUALS", "Other ESP", "Feature indicators")},
    ping = {ref_ui("MISC", "Miscellaneous", "Ping spike")},
    dpi = ui.reference('MISC', 'Settings', 'DPI scale'),
    view_color = {ref_ui("VISUALS", "Colored models", "Weapon viewmodel")},
    th = {ref_ui('VISUALS', 'Effects', 'Force third person (alive)')}
}

local ref = {
    aimbot = ref_ui('RAGE', 'Aimbot', 'Enabled'),
    doubletap = {
        main = { ref_ui('RAGE', 'Aimbot', 'Double tap') },
        fakelag_limit = ref_ui('RAGE', 'Aimbot', 'Double tap fake lag limit')
    }
}

local binds = {
    legMovement = ui.multiReference("AA", "Other", "Leg movement"),
    slowmotion = ui.multiReference("AA", "Other", "Slow motion"),
    OSAAA = ui.multiReference("AA", "Other", "On shot anti-aim"),
    AAfake = ui.multiReference("AA", "Other", "Fake peek"),
    
}

-- if nick_name == "marolower" or nick_name == "lbyking666" or nick_name == "admin" then
--     script_build = "[вазязя]"
-- elseif nick_name == "wmentol" then
--     script_build = " [beta]"
-- else
--     script_build = " [nebula]"
-- end
_ALKASH = nick_name == "Alkaeshka"
_WMENTOL = nick_name == "wmentol"

local vars = {
    localPlayer = 0,
    aaStates = {"Global", "Standing", "Running", "Walking", "Crouching", "In Air", "In air & Crouch", "Sneaking", "On Fake Lag", "On Freestand", "Target In Dormant"},
    pStates = {"G", "S", "M", "SW", "C", "A", "AC", "CM", "FL", "FS", "DORMANT"},
	sToInt = {["Global"] = 1, ["Standing"] = 2, ["Running"] = 3, ["Walking"] = 4, ["Crouching"] = 5, ["In Air"] = 6, ["In air & Crouch"] = 7, ["Sneaking"] = 8 , ["On Fake Lag"] = 9, ["On Freestand"] = 10, ["Target In Dormant"] = 11},
    intToS = {[1] = "Global", [2] = "Standing", [3] = "Running", [4] = "Walking", [5] = "Crouching", [6] = "In Air", [7] = "In air & Crouch", [8] = "Sneaking", [9] = "On Fake Lag", [10] = "On Freestand", [11] = "Target In Dormant"},
    activeState = 1,
    pState = 1,
    yaw = 0,
}
  
vars.random = 0
vars.dl_tick = 0

local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local L_hc = ui.get(refs.hitChance)

local func = {
    easeInOut = function(t)
        return (t > 0.5) and 4*((t-1)^3)+1 or 4*t^3;
    end,
    rec = function(x, y, w, h, radius, color)
        radius = math.min(x/2, y/2, radius)
        local r, g, b, a = unpack(color)
        renderer.rectangle(x, y + radius, w, h - radius*2, r, g, b, a)
        renderer.rectangle(x + radius, y, w - radius*2, radius, r, g, b, a)
        renderer.rectangle(x + radius, y + h - radius, w - radius*2, radius, r, g, b, a)
        renderer.circle(x + radius, y + radius, r, g, b, a, radius, 180, 0.25)
        renderer.circle(x - radius + w, y + radius, r, g, b, a, radius, 90, 0.25)
        renderer.circle(x - radius + w, y - radius + h, r, g, b, a, radius, 0, 0.25)
        renderer.circle(x + radius, y - radius + h, r, g, b, a, radius, -90, 0.25)
    end,
    rec_outline = function(x, y, w, h, radius, thickness, color)
        radius = math.min(w/2, h/2, radius)
        local r, g, b, a = unpack(color)
        if radius == 1 then
            renderer.rectangle(x, y, w, thickness, r, g, b, a)
            renderer.rectangle(x, y + h - thickness, w , thickness, r, g, b, a)
        else
            renderer.rectangle(x + radius, y, w - radius*2, thickness, r, g, b, a)
            renderer.rectangle(x + radius, y + h - thickness, w - radius*2, thickness, r, g, b, a)
            renderer.rectangle(x, y + radius, thickness, h - radius*2, r, g, b, a)
            renderer.rectangle(x + w - thickness, y + radius, thickness, h - radius*2, r, g, b, a)
            renderer.circle_outline(x + radius, y + radius, r, g, b, a, radius, 180, 0.25, thickness)
            renderer.circle_outline(x + radius, y + h - radius, r, g, b, a, radius, 90, 0.25, thickness)
            renderer.circle_outline(x + w - radius, y + radius, r, g, b, a, radius, -90, 0.25, thickness)
            renderer.circle_outline(x + w - radius, y + h - radius, r, g, b, a, radius, 0, 0.25, thickness)
        end
    end,
    renderer_rounded_rectangle = function(x, y, w, h, r, g, b, a, radius)
        y = y + radius
        local datacircle = {
            {x + radius, y, 180},
            {x + w - radius, y, 90},
            {x + radius, y + h - radius * 2, 270},
            {x + w - radius, y + h - radius * 2, 0},
        }
    
        local data = {
            {x + radius, y, w - radius * 2, h - radius * 2},
            {x + radius, y - radius, w - radius * 2, radius},
            {x + radius, y + h - radius * 2, w - radius * 2, radius},
            {x, y, radius, h - radius * 2},
            {x + w - radius, y, radius, h - radius * 2},
        }
    
        for _, data in pairs(datacircle) do
            renderer.circle(data[1], data[2], r, g, b, a, radius, data[3], 0.25)
        end
    
        for _, data in pairs(data) do
            renderer.rectangle(data[1], data[2], data[3], data[4], r, g, b, a)
        end
    end,
    render_text = function(x, y, ...)
        local x_offset = 0
        local args = {...}
        for i, line in pairs(args) do
            local r, g, b, a, text = unpack(line)
            local size = vector(renderer.measure_text("", text))
            renderer.text(x + x_offset, y, r, g, b, a, "", 0, text)
            x_offset = x_offset + size.x
        end
    end,
    render_shadow = function(x, y, w, h, width, rounding, accent, accent_inner)
        local rec = function(x, y, w, h, radius, color)
            radius = math.min(x/2, y/2, radius)
            local r, g, b, a = unpack(color)
            renderer.rectangle(x, y + radius, w, h - radius*2, r, g, b, a)
            renderer.rectangle(x + radius, y, w - radius*2, radius, r, g, b, a)
            renderer.rectangle(x + radius, y + h - radius, w - radius*2, radius, r, g, b, a)
            renderer.circle(x + radius, y + radius, r, g, b, a, radius, 180, 0.25)
            renderer.circle(x - radius + w, y + radius, r, g, b, a, radius, 90, 0.25)
            renderer.circle(x - radius + w, y - radius + h, r, g, b, a, radius, 0, 0.25)
            renderer.circle(x + radius, y - radius + h, r, g, b, a, radius, -90, 0.25)
        end
        
        local rec_outline = function(x, y, w, h, radius, thickness, color)
            radius = math.min(w/2, h/2, radius)
            local r, g, b, a = unpack(color)
            if radius == 1 then
                renderer.rectangle(x, y, w, thickness, r, g, b, a)
                renderer.rectangle(x, y + h - thickness, w , thickness, r, g, b, a)
            else
                renderer.rectangle(x + radius, y, w - radius*2, thickness, r, g, b, a)
                renderer.rectangle(x + radius, y + h - thickness, w - radius*2, thickness, r, g, b, a)
                renderer.rectangle(x, y + radius, thickness, h - radius*2, r, g, b, a)
                renderer.rectangle(x + w - thickness, y + radius, thickness, h - radius*2, r, g, b, a)
                renderer.circle_outline(x + radius, y + radius, r, g, b, a, radius, 180, 0.25, thickness)
                renderer.circle_outline(x + radius, y + h - radius, r, g, b, a, radius, 90, 0.25, thickness)
                renderer.circle_outline(x + w - radius, y + radius, r, g, b, a, radius, -90, 0.25, thickness)
                renderer.circle_outline(x + w - radius, y + h - radius, r, g, b, a, radius, 0, 0.25, thickness)
            end
        end
    
        local thickness = 1
        local offset = 1
        local r, g, b, a = unpack(accent)
    
        if accent_inner then
            rec(x, y, w, h + 1, 50, accent_inner)
        end
    
        for k = 0, width do
            if a * (k/width)^(1) > 5 then
                local accent = {r, g, b, a * (k/width)^(2)}
                rec_outline(x + (k - width - offset)*thickness, y + (k - width - offset) * thickness, w - (k - width - offset)*thickness*2, h + 1 - (k - width - offset)*thickness*2, rounding + thickness * (width - k + offset), thickness, accent)
            end
        end
    end,    
    clamp = function(x, min, max)
        return x < min and min or x > max and max or x
    end,
    table_contains = function(tbl, value)
        for i = 1, #tbl do
            if tbl[i] == value then
                return true
            end
        end
        return false
    end,
    setAATab = function(ref)
        ui.set_visible(refs.enabled, ref)
        ui.set_visible(refs.pitch[1], ref)
        ui.set_visible(refs.pitch[2], ref)
        ui.set_visible(refs.roll, ref)
        ui.set_visible(refs.slowmotion, ref)
        ui.set_visible(refs.Legmoves, ref)
        ui.set_visible(refs.yawBase, ref)
        ui.set_visible(refs.yaw[1], ref)
        ui.set_visible(refs.yaw[2], ref)
        ui.set_visible(refs.yawJitter[1], ref)
        ui.set_visible(refs.yawJitter[2], ref)
        ui.set_visible(refs.bodyYaw[1], ref)
        ui.set_visible(refs.bodyYaw[2], ref)
        ui.set_visible(refs.freeStand[1], ref)
        ui.set_visible(refs.freeStand[2], ref)
        ui.set_visible(refs.fsBodyYaw, ref)
        ui.set_visible(refs.edgeYaw, ref)
        ui.set_visible(refs.flLimit, ref)
        ui.set_visible(refs.flamount, ref)
        ui.set_visible(refs.flVariance, ref)
        ui.set_visible(refs.flenabled, ref)
        ui.set_visible(refs.AAfake, ref)
        ui.set_visible(refs.OSAAA, ref)
    end,
    resetAATab = function()
        ui.set(refs.OSAAa, false)
        ui.set(refs.enabled, false)
        ui.set(refs.pitch[1], "Off")
        ui.set(refs.pitch[2], 0)
        ui.set(refs.roll, 0)
        ui.set(refs.slowmotion, false)
        ui.set(refs.yawBase, "local view")
        ui.set(refs.yaw[1], "Off")
        ui.set(refs.yaw[2], 0)
        ui.set(refs.yawJitter[1], "Off")
        ui.set(refs.yawJitter[2], 0)
        ui.set(refs.bodyYaw[1], "Off")
        ui.set(refs.bodyYaw[2], 0)
        ui.set(refs.freeStand[1], false)
        ui.set(refs.freeStand[2], "On hotkey")
        ui.set(refs.fsBodyYaw, false)
        ui.set(refs.edgeYaw, false)
        ui.set(refs.flLimit, false)
        ui.set(refs.flamount, false)
        ui.set(refs.flenabled, false)
        ui.set(refs.flVariance, false)
        ui.set(refs.AAfake, false)
    end,
    lerp = function(start, vend, time)
        return start + (vend - start) * time
    end,
    vec_angles = function(angle_x, angle_y)
        local sy = math.sin(math.rad(angle_y))
        local cy = math.cos(math.rad(angle_y))
        local sp = math.sin(math.rad(angle_x))
        local cp = math.cos(math.rad(angle_x))
        return cp * cy, cp * sy, -sp
    end,
    hex = function(arg)
        local result = "\a"
        for key, value in next, arg do
            local output = ""
            while value > 0 do
                local index = math.fmod(value, 16) + 1
                value = math.floor(value / 16)
                output = string.sub("0123456789ABCDEF", index, index) .. output 
            end
            if #output == 0 then 
                output = "00" 
            elseif #output == 1 then 
                output = "0" .. output 
            end 
            result = result .. output
        end 
        return result .. "FF"
    end,
    RGBAtoHEX = function(redArg, greenArg, blueArg, alphaArg)
        return string.format('%.2x%.2x%.2x%.2x', redArg, greenArg, blueArg, alphaArg)
    end,
    includes = function(tbl, value)
        for i = 1, #tbl do
            if tbl[i] == value then
                return true
            end
        end
        return false
    end,
    -- time_to_ticks = function(t)
    --     return math.floor(0.5 + (t / globals.tickinterval()))
    -- end,
}

text_fade_animation = function(speed, r, g, b, a, text)
    local final_text = ''
    local curtime = globals.curtime()
    local max_length = 100

    for i = 0, math.min(#text, max_length) do
        local alpha = a * math.abs(1 * math.cos(2 * speed * curtime / 4 + i * 5 / 30))
        local color = func.RGBAtoHEX(r, g, b, alpha)
        final_text = final_text .. '\a' .. color .. text:sub(i, i)
    end

    if #text > max_length then
        final_text = final_text .. text:sub(max_length + 1)
    end

    return final_text
end

split = function(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
        if #t > 100 then
            break
        end
    end
    return t
end
color_text = function(string, r, g, b, a)
    local accent = "\a" .. func.RGBAtoHEX(r, g, b, a)
    local white = "\a" .. func.RGBAtoHEX(255, 255, 255, a)

    local str = ""
    for i, s in ipairs(split(string, "$")) do
        str = str .. (i % 2 ==( string:sub(1, 1) == "$" and 0 or 1) and white or accent) .. s
    end
    return str
end

local tab, container = "AA", "Anti-aimbot angles"

local aa_tab, fl_tab, other_tab = "Anti-aimbot angles", "Fake lag", "Other"

function switch(tab, name)
    return ui.new_checkbox("AA", tab, name)
end
function label(tab, name)
    return ui.new_label("AA", tab, name)
end
function list(tab, name, vl)
    return ui.new_multiselect("AA", tab, name, vl)
end
function combo(tab, name, ...)
    local vl_values = {...}
    return ui.new_combobox("AA", tab, name, table.unpack(vl_values))
end

function save(...)
    return ...
end
--[[function slider(tab, name, ...)
    local args = {...}
    return ui.new_slider("AA", tab, name, table.unpack(args))
end]]


-- local lableb321 = label(fl_tab, "\rAnoflow ~" .. func.hex({menu_r, menu_g, menu_b}) .. script_build)
local calar = ui.new_color_picker("AA", "Fake lag", "\rAnoflow ~" .. func.hex({menu_r, menu_g, menu_b}) .. script_build, lua_color.r, lua_color.g, lua_color.b, 255)

local tabPicker = combo(fl_tab, "\nTab", " Home", " Anti-aims", " Settings")
-- local aaTabs = combo(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Anti-aim" .. func.hex({200, 200, 200}) .. " ~ selector", {" Settings", " Builder"})
-- local mTabs = combo(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Settings" .. func.hex({200, 200, 200}) .. " ~ selector", {" Visuals", " Miscellaneous"})
-- local iTabs = combo(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Main" .. func.hex({200, 200, 200}) .. " ~ selector", {" Configurations", " Other"})

local aaTabs = combo(aa_tab, "\na", {" Builder", " Settings"})
local mTabs = combo(aa_tab, "\nb", {" Visuals", " Miscellaneous"})
local iTabs = combo(aa_tab, "\nc", {" Configurations", " Other"})

local menu = {
    aaTab = {
        pusto = label(aa_tab, " "),
        spin_exploit = switch(aa_tab, " Spin on round end"),
        spin_speed = slider(tab, container, "Distance", -180, 180, 70, true, nil, 1),
        anti_knife = switch(aa_tab, save(" Avoid Backstab")),
        avoid_dist = slider(tab, container, "Distance", 50, 900, 150, true, "unints", 1),
        label332 = label(fl_tab, "    "),
        label333 = label(fl_tab, "\aFFFFFFFF•  \aFFFFFFFFBinds"),
        freestandlabel = label(fl_tab, "Freestand"),
        freestandHotkey = ui.new_hotkey("AA", "Fake lag", "Freestand", true),
        legitAAHotkey = switch(aa_tab, "～ Adjust body yaw on legit"),
        m_left = ui.new_hotkey("AA", "Fake lag", " Manual left"),
        m_right = ui.new_hotkey("AA", "Fake lag", " Manual right"),
        m_forward = ui.new_hotkey("AA", "Fake lag", " Manual forward"),
        static_m = switch(fl_tab, " Static manuals"),
        flick_m = switch(fl_tab, " Anti-predict on peek (manual)"),
        flick_fs = switch(fl_tab, " Opposite flick (freestand)"),
        edge_on_fd = switch(aa_tab, " Edge yaw on Fd"),
        cst_mn_yaw = switch(aa_tab, " Custom manual yaw"),
        m_left_yaw = slider("AA", container, "Manual Left", -180, 0, -90),
        m_right_yaw = slider("AA", container, "Manual Right", 0, 180, 90),
        safe_head = list(aa_tab, " Safe head", {"Air Knife hold", "Air Zeus hold", "Target lower than you"}),
        safe_flick = switch(aa_tab, "Defensive safe head"),
        safe_flick_mode = combo(aa_tab, "Mode", {"Flick", "E spam", "Up random"}),
        safe_flick_pitch = combo(aa_tab, "Pitch", {"Fluctuate", "Custom"}),
        safe_flick_pitch_value = slider(tab, container, "\npitch", -89, 89, 0, true, "°", 1, tooltips.pitch),
        fl_custom = switch(aa_tab, " Enable fake-lag"),
        fl_mode = combo(aa_tab, "\nMode", {"Maximum", "Fluctuate", "Auto-random"}),
        flick = switch(aa_tab, "Test flick"),
    },
    builderTab = {
        lableb2233 = label(aa_tab, " "),
        lableb22 = label(fl_tab, " "),
        state = combo(fl_tab, " Anti-aim state\r", vars.aaStates), 
    },
    visualsTab = {
        visboba = label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Visuals"),

        cros_ind = switch(aa_tab, " Crosshair Indicators"),
        cros_y = slider(tab, container, " Y offset", -300, 700, 400),
        min_ind = switch(aa_tab, " Min Damage Indicator"),
        min_ind_mode = combo(aa_tab, " Show on", "Bind", "Always"),
        min_text = combo(aa_tab, " Size", "Default", "Pixel"),
        on_screen_logs = switch(aa_tab, " Screen logger"),
        on_screen_v = list(aa_tab, "\nA", {"Aim hitted", "Aim missed", "Enemy shot"}),
        debug_panel = switch(aa_tab, " Info panel"),
        arows_txt = switch(aa_tab, " Manuals arrows"),
        arows_txt_color = ui.new_color_picker("AA", container, "Manuals arrows", lua_color.r, lua_color.g, lua_color.b, 255),
        arows_txt_offset = slider("AA", "Anti-aimbot angles", " Offset", 30, 120, 50),
        arows_txt_up_or_daun = combo(aa_tab, " Move on scope", {"-", "Up", "Down"}),
        arows_txt_up_or_daun_offset = slider("AA", "Anti-aimbot angles", " Y Offset", 5, 40, 10),

        label(aa_tab, func.hex({100, 100, 100}) .. " "),
        label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Useless visuals"),
        gitler = switch(aa_tab, " GITLER On crosshair"),
        gitler_size = slider(tab, container, "Size", 10, 500, 100),
        gitler_speed = slider(tab, container, "Rotation speed", 1, 30, 3),
        gitler_color = ui.new_color_picker(tab, container, "Color", 255, 50, 50, 255),
        penis = switch(aa_tab, " Penis watermark"),


        label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "World Visuals"),

        fpsboost = switch(fl_tab, " FPS Optimization"),
        fps_on = list(fl_tab, "Work on", {"Hittable", "Fps < X"}),
        fps_x = slider("AA", "Fake lag", "X", 20, 400, 100),
        zeus_warning = switch(fl_tab, " Esp zeus warning"),
        trace_target = switch(fl_tab, " Trace to target"),

        label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "               "),
        label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "Widgets"),
        key_list = switch(fl_tab, " Keybinds list"),
        spec_list = switch(fl_tab, " Spectators list"),
        panorama = switch(fl_tab, " Delete panorama"),
        wtm_enable = switch(fl_tab, " Watermark"),
        wtm_style = combo(fl_tab, " Watermark style", {"Default", "Newest", "Glowed", "Modified"}),


    
        label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "               "),
        label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Other Visuals"),

        asp = switch(aa_tab, " Aspect ratio"),
        asp_v = slider("AA", container, " Value", 40, 130, 100),
        third_ = switch(aa_tab, func.hex({255, 0, 0}) .. "• ".. func.hex({200,200,200}) .. " Custom 3rd person distance"),
        third_dis = slider("AA", container, " Distance\r", 30, 140, 70),
        viewmodel_en = switch(aa_tab, " Viewmodel changer"),
        v_ch = combo(aa_tab, "\n", {"Default", "In scope"}),
        -- viewmodel_fov = slider("AA", container, " Fov / X / Y / Z", 0, 140, 68, true, "°", 1, tooltips.viewmodel_fov),
        -- viewmodel_x = slider("AA", container, "\nX", -100, 200, 0, true, "°", 1, tooltips.viewmodel_x),
        -- viewmodel_y = slider("AA", container, "\nY", -100, 200, 0, true, "°", 1, tooltips.viewmodel_y),
        -- viewmodel_z = slider("AA", container, "\nZ", -100, 200, 0, true, "°", 1, tooltips.viewmodel_z),
        ---
        default = {
            viewmodel_fov = slider("AA", container, " Fov / X / Y / Z", 0, 200, 68, true, "°", 1, tooltips.viewmodel_fov),
            viewmodel_x = slider("AA", container, "\nX", -100, 200, 0, true, "°", 1, tooltips.viewmodel_x),
            viewmodel_y = slider("AA", container, "\nY", -100, 200, 0, true, "°", 1, tooltips.viewmodel_y),
            viewmodel_z = slider("AA", container, "\nZ", -100, 200, 0, true, "°", 1, tooltips.viewmodel_z),    
        },
        scoped = {
            viewmodel_fov = slider("AA", container, " Fov / X / Y / Z", 0, 200, 68, true, "°", 1, tooltips.viewmodel_fov),
            viewmodel_x = slider("AA", container, "\nX", -100, 200, 0, true, "°", 1, tooltips.viewmodel_x),
            viewmodel_y = slider("AA", container, "\nY", -100, 200, 0, true, "°", 1, tooltips.viewmodel_y),
            viewmodel_z = slider("AA", container, "\nZ", -100, 200, 0, true, "°", 1, tooltips.viewmodel_z),
    
        },
        custom_scope = switch(aa_tab, " Custom scope lines"),
        custom_color = ui.new_color_picker("AA", container, "Custom scope lines", 255, 255, 255, 255),
        custom_initial_pos = slider("AA", container, "\na", 0, 400, 100, true, "px", 1),
        custom_offset = slider("AA", container, "\na", 0, 200, 10, true, "px", 1),
        weapon_scope = switch(aa_tab, "Show weapon in scope"),

        fhadsfasa = label(other_tab, func.hex({menu_r, menu_g, menu_b}) .. "Animations"),
        a_pitch = switch(other_tab, "\a808080FF• \aDCDCDCFFPitch 0 on land"),
        a_body = switch(other_tab, "\a808080FF• \aDCDCDCFFBody lean"),
        a_legacy = switch(other_tab, "\a808080FF• \aDCDCDCFFLegacy 'Moving' state"),
        ap_move = combo(other_tab, "Move legs", {"-", "Static", "Jitter", "Walking", "Kangaroo", "Earthquake"}),
        ap_air = combo(other_tab, "Air legs", {"-", "Force falling", "Walking", "Kangaroo", "Earthquake", "Jitter"}),
        walk_cycle = switch(other_tab, "Always walking"),
        fu8ayafsyu8n = label(fl_tab, " "),
        b3837372 = label(aa_tab, "       "),
    },
    miscTab = {
        miscboba = label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Miscellaneous"),
        filtercons = switch(aa_tab, " Console Filter"),
        clanTag = switch(aa_tab, " Animated clantag"),
        clantag_mode = combo(aa_tab, "Mode", {"Anoflow", "#airstopgang"}),
        clan_w = switch(aa_tab, "WMENTOL CLANTAG"),
        clan_a = switch(aa_tab, "ALKASH CLANTAG"),
        inf_ammo = switch(aa_tab, "БЕСКАНЕЧНИЕ ПАТРОНИ"),
        --тут я хз че они делали (ебанаты конченые)

        kill_say = switch(aa_tab, " Kill say"),
        --kill_v = list(aa_tab, "\nMode", {"On kill", "On death"}),
        console_logs = switch(aa_tab, " Console logs"),
        console_logs_custom_vibor = switch(aa_tab, "Custom '?' reason"),
        console_logs_resolver = combo(aa_tab, "\nCustom '?' reason\r", {"resolver", "unknown", "correction", "custom"}),
        console_logs_custom = ui.new_textbox("AA", "Fake lag", "Custom name", ""),
        drop_gr = switch(aa_tab, " Drop grenades"),
        drop_key = ui.new_hotkey("AA", container, " Drop grenades", true),
        drop_multi = list(aa_tab, "\ngrenades", {"HE Grenade", "Smoke Grenade", "Molotov"}),
        bomb_fix = switch(aa_tab, " Fix 'E' in bombsite"),
        auto_buy = switch(aa_tab, " Auto buy"),
        auto_w = combo(aa_tab, "\nweapon", {"-", "Awp", "Scout", "ScarCT/ScarT"}),
        auto_p = combo(aa_tab, "\nweapon", {"-", "Deagle", "Seven/Tec"}),
        auto_g = list(aa_tab, "\ngrenades", {"Molotov", "Grenade", "Smoke"}),
        auto_add = list(aa_tab, "\nadd", {"Armor", "Full armor", "Defuser", "Zeus"}),
        console_color_e = switch(aa_tab, " Console color"),
        console_color_c = ui.new_color_picker("AA", container, " Console color", 255, 255, 255, 255),

        label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. " "),
        mdadad2aaa = label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Movement"),
        ai_peek = switch(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "AI ".. func.hex({200,200,200}) .."Peek bot"),
        ai_peek_key = ui.new_hotkey("AA", container, func.hex({menu_r, menu_g, menu_b}) .. "AI ".. func.hex({200,200,200}) .."Peek bot", true),
        ai_peek_info = label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "• ".. func.hex({200,200,200}) .."This feature in beta"),
        ai_peek_info_2 = label(aa_tab, func.hex({255, 0, 0}) .. " Warning! ".. func.hex({200,200,200}) .."Your FPS may decrease!"),
        fast_ladder = switch(aa_tab, " Fast ladder"),

        label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "Unlisted feature"),
        spread_cashe = switch(fl_tab, " Fast cashe"),
        map_cashe = switch(fl_tab, " Limit map offset"),

    },
    rage_tab = {
        mdadadaa = label(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "Ragebot"),
        auto_tp = switch(aa_tab, " Automatic teleport"),
        auto_tpHotkey = ui.new_hotkey("AA", container, "Automatic teleport", true),
        auto_tp_indicator_disable = switch(aa_tab, "\a808080FF• \aDCDCDCFFDisable indicators"),

        jump_scout = switch(aa_tab, " Jumpscout"),
        charge_dt = switch(aa_tab, " Unsafe charge DT"),
        charge_wpn = list(aa_tab, "Weapons", {"Scout", "Awp"}),
        charge_bit = list(aa_tab, "State", {"Ground", "Air"}),
        ai_ = {
            multi_points = switch(aa_tab, " Adaptive multipoints"),
        },
        air_stop = switch(aa_tab, " Air quick stop"),
        air_stop_k = ui.new_hotkey("AA", container, " Air quick stop", true),
        air_trigger = combo(aa_tab, "Active on", {"On hotkey", "Target priority"}),
        air_target = combo(aa_tab, "On target", {"Lethal", "Target is closely"}),
        air_distance = slider("AA", container, "Maximum distance", 100, 5000, 500),
        label(aa_tab, "       "),
        
        mdadadaa321 = label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "Resolver / Correction"),
        resolver = switch(fl_tab, " Jitter" .. func.hex({menu_r, menu_g, menu_b}) .. " Correction"),
        rs_mode = combo(fl_tab, "\a808080FF• \aDCDCDCFFCorrection mode", {"Wide desync", "Random brute"}),
        rs_debug = switch(fl_tab, "Debug" .. func.hex({menu_r, menu_g, menu_b}) .. " Correction"),
        rs_add = list(fl_tab, "Resolving states", {"Standing", "Running", "Air", "Crouching"}),
        player_correction = switch(fl_tab, " Fix players animation"),

        lab321321 = label(fl_tab, " "),
        label(fl_tab, func.hex({menu_r, menu_g, menu_b}) .. "Aim features"),
        zeus_fix = switch(fl_tab, " Fix zeus miss"),
        spread_fix = switch(fl_tab, " Spread tool"),

        lab3 = label(aa_tab, " "),
        mdadad2aa = label(other_tab, func.hex({menu_r, menu_g, menu_b}) .. "Aimtools"),
        
        aim_tools_enable = switch(other_tab, func.hex({menu_r, menu_g, menu_b}) .. "Aim".. func.hex({200,200,200}) .. "Tools"),
        
        aim_tab = slider("AA", "Other", "Aimtools tab", 1, 4, 1, true, nil, 1, {[1] = "Baim/Safep", [2] = "Hitchance", [3] = "Silent aim", [4] = "Delay shot"}),
        
        aim_tools_baim_mode = combo(other_tab, "Predfer Body-aim mode", {"Force", "On"}),
        aim_tools_baim_trigers = list(other_tab, "\nBody-aim if", {"Enemy higher than you", "Enemy HP < X"}),
        aim_tools_baim_hp = slider("AA", "Other", func.hex({255, 0, 0}) .. "• ".. func.hex({200,200,200}) .. "HP / X", 30, 92, 92, true, "", 1, tooltips.lethal),
        label_aim = label(other_tab, " "),
        aim_tools_safe_trigers = list(other_tab, "Prefer Safe-point if", {"Enemy higher than you", "Enemy HP < X"}),
        aim_tools_safe_hp = slider("AA", "Other", func.hex({255, 0, 0}) .. "• ".. func.hex({200,200,200}) .. "HP / X", 30, 92, 92, true, nil, 1, tooltips.lethal),

        aim_tools_hitchance_warning = label(other_tab, "Pre save config to use this feature"),
        aim_tools_hitchance = switch(other_tab, "Enable custom hitchance"),
        aim_tools_hc_land = slider("AA", "Other", "On land", 0, 100, 80, true, "%", 1, {[0] = "Off", [80] = "Adaptive"}),
        aim_tools_hc_air = slider("AA", "Other", "In Air", 0, 100, 45, true, "%", 1, {[0] = "Off", [45] = "Adaptive"}),

        aim_tools_silent = switch(other_tab, "Enable adaptive silent aim"),
        aim_tools_silent_out = list(other_tab, "Adaptive on", {"Out of fov", "Higher than you"}),

        aim_tools_delay_shot = switch(other_tab, "Enable custom delay shot"),
        aim_tools_delay_states = list(other_tab, "States", {"Standing", "Running", "Walking", "Crouching", "Sneaking"}),
        aim_tools_delay_hp = combo(other_tab, "If enemy", {"-", "Lethal", "Not lethal"}),
        aim_tools_delay_land = switch(other_tab, "Adjust on land"),
        aim_tools_delay_ind = switch(other_tab, "Show indicators"),

    },
    extras = {
        text = ui.new_checkbox("LUA","B","Icon_extra"),
        icon = ui.new_checkbox("LUA","B","text_exetra"),
        gradient = ui.new_checkbox("LUA","B","gradient_extras"),
        length = slider("LUA","B", "legfnth_Extra", 20,150 ,100, true),
        width = slider("LUA","B", "width_extra", 1,15 ,4, true),
        text1 = ui.new_checkbox("LUA","B","Icon_extra1"),
        icon1 = ui.new_checkbox("LUA","B","text_exetra1"),
        gradient1 = ui.new_checkbox("LUA","B","gradient_extras1"),
        dynamic = ui.new_checkbox("LUA","B","dynamic_extras1"),
        length1=slider("LUA","B", "legfnth_Extra1", 20,150 ,100, true),
        width1=slider("LUA","B", "width_extra1", 1,15 ,4, true),
        test = ui.new_checkbox("LUA","B","test"),
    },
    configTab = {
        list = ui.new_listbox(tab, container, "Configs", ""),
        name = ui.new_textbox(tab, container, "Config name", ""),
        load = ui.new_button(tab, container, "\aFFFFFFFF Load", function() end),
        save = ui.new_button(tab, container, "\aFFFFFFFF Save", function() end),
        delete = ui.new_button(tab, container, "\aFFFFFFFF Delete", function() end),
        labelc = label(other_tab, "Create config"),
        create_name = ui.new_textbox("AA", "Other", "Config name", ""),
        create = ui.new_button("AA", "Other", "\aFFFFFFFF Create", function() end),
        import = ui.new_button("AA", "Other", "\aFFFFFFFF Import", function() end),
        export = ui.new_button("AA", "Other", "\aFFFFFFFF Export", function() end),
        default = ui.new_button("AA", "Other", " Default cfg", function() end),

    },
    infoTab = {
        online = label(fl_tab, " "),
        label1488 = label(fl_tab, " Session time: "),
        evaded = label(fl_tab, "Evaded miss to anoflow:"),
        killed = label(fl_tab, "Killed with anoflow:"),
        label900 = label(fl_tab, "       "),
        dada = label(fl_tab, "  "),

    },
    custTab = {
        info_panel_pos = combo(fl_tab, "Info panel position", {"Up", "Down"})
    }
}

local aaBuilder = {}
    for i = 1, #vars.aaStates do
        aaBuilder[i] = {
            label_huy = label(fl_tab, "   "),
            enableState = switch(fl_tab, "\rOverride " .. func.hex({menu_r, menu_g, menu_b}) .. vars.aaStates[i] .. func.hex({200,200,200})),
            label_huy2a = label(fl_tab, "   "),
            pitch = combo(fl_tab, "Pitch", {"Down", "Up"}),
            label_huy2 = label(fl_tab, "   "),
            yaw_base = combo(fl_tab, "Yaw base", {"At targets", "Local view"}),
            stateDisablers = list(aa_tab, "\rDisablers\r", {"Standing", "Running", "Walking", "Crouching", "In Air", "In air & Crouch", "Sneaking"}),
            _offset = label(aa_tab, " Yaw Offset"),
            yaw = combo(aa_tab, func.hex({menu_r, menu_g, menu_b}) .. "" .. func.hex({200,200,200}) .. " Yaw Mode", {" Left & Right"}),
            yaw_main = slider(tab, container, "\nyaw", -90, 90, 0, true, "°", 1, {[0] = "Main"}),
            yawLeft = slider(tab, container, "\nLeft / Right", -90, 0, 0, true, "°", 1, {[0] = "Left"}),
            yawRight = slider(tab, container, "\nRight yaw", 0, 90, 0, true, "°", 1, {[0] = "Right"}),
            randomization = slider(tab, container, "\nRandomization", -30, 30, 0, true, "%", 1, {[0] = "Random"}),
            randomization_brute = slider(tab, container, "\nAnti-brute randomization", -40, 40, 0, true, "%", 1, {[0] = "Brute Random"}),
            label_huya = label(aa_tab, "   "),
            yaw_jitter = slider(tab, container, "\njitter yaw", 1, 8, 1, true, nil, 1, {
                [1] = "Modifier",
                [2] = "Center",
                [3] = "Skitter",
                [4] = "Random",
                [5] = "3-Way",
                [6] = "7-Way",
                [7] = "90-way",
                [8] = "Sway"
            }),
            yawJitter = ui.new_combobox("AA", "Anti-aimbot angles", " Modifier", {"Disable", " Center", " Skitter", " Random", " 3-Way", " 7-Way", " 90-Way", " Sway"}),
            wayFirst = slider(tab, container, "\nFirst yaw jitter\r", -180, 180, 0, true, "°", 1),
            waySecond = slider(tab, container, "\nSecond yaw jitter\r", -180, 180, 0, true, "°", 1),
            wayThird = slider(tab, container, "\nThird yaw jitter\r", -180, 180, 0, true, "°", 1),
            j_1 = slider(tab, container, "\nyaw1", -180, 180, 0, true, "°", 1),
            j_2 = slider(tab, container, "\nyaw2", -180, 180, 0, true, "°", 1),
            j_3 = slider(tab, container, "\nyaw3", -180, 180, 0, true, "°", 1),
            j_4 = slider(tab, container, "\nyaw4", -180, 180, 0, true, "°", 1),
            j_5 = slider(tab, container, "\nyaw5", -180, 180, 0, true, "°", 1),
            j_6 = slider(tab, container, "\nyaw6", -180, 180, 0, true, "°", 1),
            j_7 = slider(tab, container, "\nyaw7", -180, 180, 0, true, "°", 1),
        
            yawJitterStatic = slider(tab, container, "\nModifier Offset", -90, 90, 0, true, "°", 1, {[0] = "Off"}),
            sway_speed = slider(tab, container, "Speed\n", 2, 16, 0, true, nil, 1),
            aa_brute_range = slider(tab, container, "\nAnti-brute offset", 0, 80, 0, true, "°", 1, {[0] = "Brute Random Offset"}),
            label_huya2 = label(aa_tab, "   "),
            bodyYaw = combo(aa_tab, " Body yaw", {"Disable", " Desync", " Jitter"}),
            body_yaw = combo(aa_tab, " Desync", {" Static", " Jitter"}),

            desync = slider(tab, container, "Desync", -58, 58, 0, true, "°", 1, {[0] = "Zero"}),
            --aa_brute_b_yaw = slider(tab, container, "Anti-brute Desync", -60, 60, 0, true, "°", 1, {[0] = "Off"}),

            bodyYawStatic = slider(tab, container, "Desync", -60, 60, 0, true, "°", 1, {[0] = "Off"}),

            delayed_body = slider(tab, container, "Delay / Random", 1, 11, 1, true, "t", 1, {[1] = "Off"}),
            random_delay = slider(tab, container, "\nRandomize delay", 1, 11, 1, true, "t", 1, {[1] = "Off"}),
            aa_brute_dl_tick = slider(tab, container, "\nAnti-brute tick", 0, 5, 0, true, "t", 1, {[0] = "Brute Tick"}),

    
            label_anti = label(aa_tab, "   "),
            --Min/Max \a808080FF• \aDCDCDCFF
            force_defensive = switch(aa_tab, " Force " .. func.hex({menu_r, menu_g, menu_b}) .. "defensive"),
            defensive_delay = slider(tab, container, "\n Defensive delay", 0, 50, 0, true, "t", 1, {[0] = "Delay"}),
            label_huya22dsa2 = label(aa_tab, "   "),

            defensiveAntiAim = ui.new_checkbox("AA", "Other", func.hex({menu_r, menu_g, menu_b}) .. " Defensive" .. func.hex({200, 200, 200}) ..  " Anti-Aim"),
            def_pitch = combo(other_tab, " Pitch\n", "Disabled", " Custom", " Random", " Random (gamesense)", " 3-way", " Dynamic", " Sway", " Switch", " Flick"),
            def_pitchSlider = slider("AA", "Other", "\nPitch add", -89, 89, 0, true, "°", 1, tooltips.pitch),
            def_pitch_s1 = slider("AA", "Other", func.hex({80, 80, 80}) .. "Min/Max" .. func.hex({menu_r, menu_g, menu_b}) .. " pitch", -89, 89, -89, true, "°", 1, tooltips.pitch),
            def_pitch_s2 = slider("AA", "Other", "\nTo", -89, 89, 89, true, "°", 1, tooltips.pitch),
            def_slow_gen = slider("AA", "Other", " Generate speed\n", 0, 10, 0, true, "", 0.1, {[0] = "Default", [2] = "Static"}),
            def_dyn_speed = slider("AA", "Other", " Speed", 1, 20, 0, true, "", 1),
            def_jit_delay = slider("AA", "Other", " Delay", 2, 20, 0, true, "", 1),
            def_3_1 = slider("AA", "Other", "\rFirst/Second/Third", -89, 89, 0, true, "°", 1, tooltips.pitch),
            def_3_2 = slider("AA", "Other", "\nsecond", -89, 89, 0, true, "°", 1, tooltips.pitch),
            def_3_3 = slider("AA", "Other", "\nthird", -89, 89, 0, true, "°", 1, tooltips.pitch),
            
            label_huya222 = label(other_tab, "   "),
            def_yawMode = combo(other_tab, " Yaw", "Disabled", " Custom", " Spin", " Spin V2", " Distorion", " Switch", " Random", " Random static", " Flick", " 3-ways", " Move yaw", " Threat_origin", "Normalize"),
            def_yawStatic = slider("AA", "Other", "\nOffset\r", -180, 180, 0, true, "°", 1),
            def_yaw_spin_range = ui.new_slider("AA", "Other", "Range\n", 0, 360, 180, true, "°", 1),
            def_yaw_spin_speed = ui.new_slider("AA", "Other", "Speed\n", -35, 35, 4, true, "t", 0.2),
            def_yaw_left = slider("AA", "Other", func.hex({80, 80, 80}) .. "Min/Max" .. func.hex({menu_r, menu_g, menu_b}) .. " yaw", -180, 180, -90, true, "°", 1),
            def_yaw_right = slider("AA", "Other", "\n", -180, 180, 90, true, "°", 1),
            def_yaw_random = slider("AA", "Other", "Randomization\n", 0, 180, 0, true, "%", 1, {[0] = "Off"}),
            def_yaw_switch_delay = slider("AA", "Other", " Delay", 2, 20, 2, true, "t", 1, {[2] = "Off"}),
            def_switch_brute = switch(other_tab, " Anti-brute spin"),
            def_yaw_exploit_speed = slider("AA", "Other", "Speed\n", 1, 20, 1, true, "", 0.2),
            def_slow_gena = slider("AA", "Other", "Generate speed\n", 0, 10, 0, true, "", 0.1, {[0] = "Default", [2] = "Static"}),
            def_way_1 = slider("AA", "Other", "\nfirst", -180, 180, 0, true, "°", 1),
            def_way_2 = slider("AA", "Other", "\nsecond", -180, 180, 0, true, "°", 1),
            def_way_3 = slider("AA", "Other", "\nthird", -180, 180, 0, true, "°", 1),
    
            bidy = switch(other_tab, " Control jitter body yaw"),
            aa_ran = slider("AA", "Other", "\nthird", -180, 180, 0, true, "°", 1),
            aa_ran_1 = slider("AA", "Other", "\nthird", -180, 180, 0, true, "°", 1),
            aa_ran2 = slider("AA", "Other", "\nthird", -180, 180, 0, true, "°", 1),
            aa_ran3 = slider("AA", "Other", "\nthird", -180, 180, 0, true, "°", 1),

            def_ran_1 = slider("AA", "Anti-aimbot angles", "\nbruteforce 1", -180, 180, 0, true, "°", 1),

            --anti brute
            aa_brute_en = switch(aa_tab, "Enable " .. func.hex({menu_r, menu_g, menu_b}) .. vars.aaStates[i] .. func.hex({200,200,200}) .. " Anti-brute"),
            aa_brute_mode = combo(other_tab, "Mode", {"Disabled", "Randomize", "Increase", "Decrease"}),
            aa_brute_time = slider("AA", container, "Reset time", 1, 20, 5, true, "s", 1),
            
            antibrute_enable = switch(other_tab, "Override " .. func.hex({menu_r, menu_g, menu_b}) .. vars.aaStates[i] .. func.hex({200,200,200}) .. " Anti-brute"),
            antibrute_aa = list(other_tab, "Anti-brute AA", {"Yaw", "Modifier", "Body yaw"}),
            antibrute_yaw = slider("AA", "Other",  "\nYaw", -60, 60, 0, true, "°", 1),
            antibrute_mod = combo(other_tab, "Modifier", {"-","Center", "Random", "Sway", "Delayed"}),
            antibrute_mod_range = slider("AA", "Other",  "\nModifier range", -70, 70, 0, true, "°", 1),
            antibrute_body = combo(other_tab, "Body yaw mode", {"-", "Static", "Jitter", "Delayed"}),
            antibrute_body_range = slider("AA", "Other", "\nbody range", -59, 59, 0, true, "°", 1),
        }
    end
renderer_rectangle_rounded = function(x, y, w, h, r, g, b, a, radius)
	y = y + radius
	local datacircle = {
		{x + radius, y, 180},
		{x + w - radius, y, 90},
		{x + radius, y + h - radius * 2, 270},
		{x + w - radius, y + h - radius * 2, 0},
	}
			
	local data = {
		{x + radius, y, w - radius * 2, h - radius * 2},
		{x + radius, y - radius, w - radius * 2, radius},
		{x + radius, y + h - radius * 2, w - radius * 2, radius},
		{x, y, radius, h - radius * 2},
		{x + w - radius, y, radius, h - radius * 2},
	}
			
	for _, data in pairs(datacircle) do
		renderer.circle(data[1], data[2], r, g, b, a, radius, data[3], 0.25)
	end	
	for _, data in pairs(data) do
	   renderer.rectangle(data[1], data[2], data[3], data[4], r, g, b, a)
	end
end

solus_render = (function() local solus_m = {}; local RoundedRect = function(x, y, w, h, radius, r, g, b, a) renderer.rectangle(x+radius,y,w-radius*2,radius,r,g,b,a)renderer.rectangle(x,y+radius,radius,h-radius*2,r,g,b,a)renderer.rectangle(x+radius,y+h-radius,w-radius*2,radius,r,g,b,a)renderer.rectangle(x+w-radius,y+radius,radius,h-radius*2,r,g,b,a)renderer.rectangle(x+radius,y+radius,w-radius*2,h-radius*2,r,g,b,a)renderer.circle(x+radius,y+radius,r,g,b,a,radius,180,0.25)renderer.circle(x+w-radius,y+radius,r,g,b,a,radius,90,0.25)renderer.circle(x+radius,y+h-radius,r,g,b,a,radius,270,0.25)renderer.circle(x+w-radius,y+h-radius,r,g,b,a,radius,0,0.25) end; local rounding = 4; local rad = rounding + 2; local n = 45; local o = 20; local OutlineGlow = function(x, y, w, h, radius, r, g, b, a) renderer.rectangle(x+2,y+radius+rad,1,h-rad*2-radius*2,r,g,b,a)renderer.rectangle(x+w-3,y+radius+rad,1,h-rad*2-radius*2,r,g,b,a)renderer.rectangle(x+radius+rad,y+2,w-rad*2-radius*2,1,r,g,b,a)renderer.rectangle(x+radius+rad,y+h-3,w-rad*2-radius*2,1,r,g,b,a)renderer.circle_outline(x+radius+rad,y+radius+rad,r,g,b,a,radius+rounding,180,0.25,1)renderer.circle_outline(x+w-radius-rad,y+radius+rad,r,g,b,a,radius+rounding,270,0.25,1)renderer.circle_outline(x+radius+rad,y+h-radius-rad,r,g,b,a,radius+rounding,90,0.25,1)renderer.circle_outline(x+w-radius-rad,y+h-radius-rad,r,g,b,a,radius+rounding,0,0.25,1) end; local FadedRoundedRect = function(x, y, w, h, radius, r, g, b, a, glow) local n=a/255*n;renderer.rectangle(x+radius,y,w-radius*2,1,r,g,b,a)renderer.circle_outline(x+radius,y+radius,r,g,b,a,radius,180,0.25,1)renderer.circle_outline(x+w-radius,y+radius,r,g,b,a,radius,270,0.25,1)renderer.gradient(x,y+radius,1,h-radius*2,r,g,b,a,r,g,b,n,false)renderer.gradient(x+w-1,y+radius,1,h-radius*2,r,g,b,a,r,g,b,n,false)renderer.circle_outline(x+radius,y+h-radius,r,g,b,n,radius,90,0.25,1)renderer.circle_outline(x+w-radius,y+h-radius,r,g,b,n,radius,0,0.25,1)renderer.rectangle(x+radius,y+h-1,w-radius*2,1,r,g,b,n)if altrue then for radius=4,glow do local radius=radius/2;OutlineGlow(x-radius,y-radius,w+radius*2,h+radius*2,radius,r,g,b,glow-radius*2)end end end; local HorizontalFadedRoundedRect = function(x, y, w, h, radius, r, g, b, a, glow, r1, g1, b1) local n=a/255*n;renderer.rectangle(x,y+radius,1,h-radius*2,r,g,b,a)renderer.circle_outline(x+radius,y+radius,r,g,b,a,radius,180,0.25,1)renderer.circle_outline(x+radius,y+h-radius,r,g,b,a,radius,90,0.25,1)renderer.gradient(x+radius,y,w/3.5-radius*2,1,r,g,b,a,0,0,0,n/0,true)renderer.gradient(x+radius,y+h-1,w/3.5-radius*2,1,r,g,b,a,0,0,0,n/0,true)renderer.rectangle(x+radius,y+h-1,w-radius*2,1,r1,g1,b1,n)renderer.rectangle(x+radius,y,w-radius*2,1,r1,g1,b1,n)renderer.circle_outline(x+w-radius,y+radius,r1,g1,b1,n,radius,-90,0.25,1)renderer.circle_outline(x+w-radius,y+h-radius,r1,g1,b1,n,radius,0,0.25,1)renderer.rectangle(x+w-1,y+radius,1,h-radius*2,r1,g1,b1,n)if altrue then for radius=4,glow do local radius=radius/2;OutlineGlow(x-radius,y-radius,w+radius*2,h+radius*2,radius,r1,g1,b1,glow-radius*2)end end end; local FadedRoundedGlow = function(x, y, w, h, radius, r, g, b, a, glow, r1, g1, b1) local n=a/255*n;renderer.rectangle(x+radius,y,w-radius*2,1,r,g,b,n)renderer.circle_outline(x+radius,y+radius,r,g,b,n,radius,180,0.25,1)renderer.circle_outline(x+w-radius,y+radius,r,g,b,n,radius,270,0.25,1)renderer.rectangle(x,y+radius,1,h-radius*2,r,g,b,n)renderer.rectangle(x+w-1,y+radius,1,h-radius*2,r,g,b,n)renderer.circle_outline(x+radius,y+h-radius,r,g,b,n,radius,90,0.25,1)renderer.circle_outline(x+w-radius,y+h-radius,r,g,b,n,radius,0,0.25,1)renderer.rectangle(x+radius,y+h-1,w-radius*2,1,r,g,b,n)if altrue then for radius=4,glow do local radius=radius/2;OutlineGlow(x-radius,y-radius,w+radius*2,h+radius*2,radius,r1,g1,b1,glow-radius*2)end end end; solus_m.linear_interpolation = function(start, _end, time) return (_end - start) * time + start end solus_m.clamp = function(value, minimum, maximum) if minimum>maximum then return math.min(math.max(value,maximum),minimum)else return math.min(math.max(value,minimum),maximum)end end solus_m.lerp = function(start, _end, time) time=time or 0.005;time=solus_m.clamp(globals.frametime()*time*175.0,0.01,1.0)local a=solus_m.linear_interpolation(start,_end,time)if _end==0.0 and a<0.01 and a>-0.01 then a=0.0 elseif _end==1.0 and a<1.01 and a>0.99 then a=1.0 end;return a end solus_m.container = function(x, y, w, h, r, g, b, a, alpha, fn) if alpha*255>0 then end;RoundedRect(x,y,w,h,rounding,17,17,17,a)FadedRoundedRect(x,y,w,h,rounding,r,g,b,alpha*255,alpha*o)if not fn then return end;fn(x+rounding,y+rounding,w-rounding*2,h-rounding*2.0) end; solus_m.horizontal_container = function(x, y, w, h, r, g, b, a, alpha, r1, g1, b1, fn) if alpha*255>0 then end;RoundedRect(x,y,w,h,rounding,17,17,17,a)HorizontalFadedRoundedRect(x,y,w,h,rounding,r,g,b,alpha*255,alpha*o,r1,g1,b1)if not fn then return end;fn(x+rounding,y+rounding,w-rounding*2,h-rounding*2.0) end; solus_m.container_glow = function(x, y, w, h, r, g, b, a, alpha,r1, g1, b1, fn) if alpha*255>0 then end;RoundedRect(x,y,w,h,rounding,17,17,17,a)FadedRoundedGlow(x,y,w,h,rounding,r,g,b,alpha*255,alpha*o,r1,g1,b1)if not fn then return end;fn(x+rounding,y+rounding,w-rounding*2,h-rounding*2.0) end; solus_m.measure_multitext = function(flags, _table) local a=0;for b,c in pairs(_table)do c.flags=c.flags or''a=a+renderer.measure_text(c.flags,c.text)end;return a end solus_m.multitext = function(x, y, _table) for a,b in pairs(_table)do b.flags=b.flags or''b.limit=b.limit or 0;b.color=b.color or{255,255,255,255}b.color[4]=b.color[4]or 255;renderer.text(x,y,b.color[1],b.color[2],b.color[3],b.color[4],b.flags,b.limit,b.text)x=x+renderer.measure_text(b.flags,b.text) end end return solus_m end)()

local svg_main = [[<?xml version="1.0" encoding="utf-8"?>

<!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
<svg width="800px" height="800px" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <title>ai</title>
  <g id="Layer_2" data-name="Layer 2">
    <g id="invisible_box" data-name="invisible box">
      <rect width="48" height="48" fill="none"/>
    </g>
    <g id="Q3_icons" data-name="Q3 icons">
      <g>
        <path d="M45.6,18.7,41,14.9V7.5a1,1,0,0,0-.6-.9L30.5,2.1h-.4l-.6.2L24,5.9,18.5,2.2,17.9,2h-.4L7.6,6.6a1,1,0,0,0-.6.9v7.4L2.4,18.7a.8.8,0,0,0-.4.8v9H2a.8.8,0,0,0,.4.8L7,33.1v7.4a1,1,0,0,0,.6.9l9.9,4.5h.4l.6-.2L24,42.1l5.5,3.7.6.2h.4l9.9-4.5a1,1,0,0,0,.6-.9V33.1l4.6-3.8a.8.8,0,0,0,.4-.7V19.4h0A.8.8,0,0,0,45.6,18.7Zm-5.1,6.8H42v1.6l-3.5,2.8-.4.3-.4-.2a1.4,1.4,0,0,0-2,.7,1.5,1.5,0,0,0,.6,2l.7.3h0v5.4l-6.6,3.1-4.2-2.8-.7-.5V25.5H27a1.5,1.5,0,0,0,0-3H25.5V9.7l.7-.5,4.2-2.8L37,9.5v5.4h0l-.7.3a1.5,1.5,0,0,0-.6,2,1.4,1.4,0,0,0,1.3.9l.7-.2.4-.2.4.3L42,20.9v1.6H40.5a1.5,1.5,0,0,0,0,3ZM21,25.5h1.5V38.3l-.7.5-4.2,2.8L11,38.5V33.1h0l.7-.3a1.5,1.5,0,0,0,.6-2,1.4,1.4,0,0,0-2-.7l-.4.2-.4-.3L6,27.1V25.5H7.5a1.5,1.5,0,0,0,0-3H6V20.9l3.5-2.8.4-.3.4.2.7.2a1.4,1.4,0,0,0,1.3-.9,1.5,1.5,0,0,0-.6-2L11,15h0V9.5l6.6-3.1,4.2,2.8.7.5V22.5H21a1.5,1.5,0,0,0,0,3Z"/>
        <path d="M13.9,9.9a1.8,1.8,0,0,0,0,2.2l2.6,2.5v2.8l-4,4v5.2l4,4v2.8l-2.6,2.5a1.8,1.8,0,0,0,0,2.2,1.5,1.5,0,0,0,1.1.4,1.5,1.5,0,0,0,1.1-.4l3.4-3.5V29.4l-4-4V22.6l4-4V13.4L16.1,9.9A1.8,1.8,0,0,0,13.9,9.9Z"/>
        <path d="M31.5,14.6l2.6-2.5a1.8,1.8,0,0,0,0-2.2,1.8,1.8,0,0,0-2.2,0l-3.4,3.5v5.2l4,4v2.8l-4,4v5.2l3.4,3.5a1.7,1.7,0,0,0,2.2,0,1.8,1.8,0,0,0,0-2.2l-2.6-2.5V30.6l4-4V21.4l-4-4Z"/>
      </g>
    </g>
  </g>
</svg>]]
logo_main = renderer.load_svg(svg_main, 13, 13)

_G.notif=(function()
	_G.notif_cashe={}
	local a={callback_registered=false,maximum_count=4}
	local b=ui.reference("Misc","Settings","Menu color")
	function a:register_callback()
		if self.callback_registered then return end;
		client.set_event_callback("paint_ui",function()
			local c={client.screen_size()}
			local d={0,0,0}
			local e=1;
			local f=_G.notif_cashe;
			for g=#f,1,-1 do
				_G.notif_cashe[g].time=_G.notif_cashe[g].time-globals.frametime()
				local h,i=255,0;
				local i2 = 0;
				local lerpy = 150;
				local lerp_circ = 0.5;
				local j=f[g]
				if j.time<0 then
					table.remove(_G.notif_cashe,g)
				else
					local k=j.def_time-j.time;
					local k=k>1 and 1 or k;
				if j.time<1 or k<1 then
					i=(k<1 and k or j.time)/1;
					i2=(k<1 and k or j.time)/1;
					h=i*255;
					lerpy=i*150;
					lerp_circ=i*0.5
				if i<0.2 then
					e=e+8*(1.0-i/0.2)
				end
			end;

			local l={ui.get(b)}
			local m={math.floor(renderer.measure_text(nil,"[anoflo]"..j.draw)*1.03)}
			local n={renderer.measure_text(nil,"[anoflo]")}
			local o={renderer.measure_text(nil,j.draw)}
			local p={c[1]/2-m[1]/2+3,c[2]-c[2]/140*13.4+e - 35}
			local g_r, g_g, g_b = ui.get(calar)
			local r_bg, g_bg, b_bg, a_bg = 8, 8, 7, 140
			local x, y = client.screen_size()

					solus_render.container_glow(p[1] + 4, p[2], m[1], 19, g_r, g_g, g_b, 0, 1, g_r, g_g, g_b);
				renderer_rectangle_rounded(p[1] + 4, p[2] , m[1], 19, r_bg, g_bg, b_bg, a_bg, 4)
	            
				renderer.text(p[1]-8+m[1]/2+n[1]/2,p[2] + 9,255,255,255, 255,"c",nil,j.draw)e=e-33
				
				---------
				renderer.circle_outline(p[1] + 7, p[2] + 3, g_r, g_g, g_b, 255, 3, 132, 0.4, 1.5) -- LEFT TOP
				---------
				renderer.circle_outline(p[1] + 7, p[2] + 16, g_r, g_g, g_b, 255, 3, 75, 0.4, 1.5) -- LEFT BOTTOM
				
				--------
				renderer.circle_outline(p[1]+m[1] + 1, p[2] + 3, g_r, g_g, g_b, 255, 3, 260, 0.4, 1.5) -- RIGHT UP
				--------
				renderer.circle_outline(p[1]+m[1] + 1, p[2] + 16, g_r, g_g, g_b, 255, 3, 312, 0.4, 1.5) -- RIGHT BOTTOM
				
				
				renderer.gradient(p[1] + 4, p[2] + 2, 2, 15, g_r, g_g, g_b, 255, g_r, g_g, g_b, 255, true) -- LEFT LINE
				renderer.gradient(p[1]+m[1] + 2, p[2] + 2, 2, 15, g_r, g_g, g_b, 255, g_r, g_g, g_b, 255, true) -- RIGHT LINE
				
				renderer.texture(logo_main, p[1] + 17, p[2] + 3, 13, 13, g_r, g_g, g_b, 255)


			
		end
	end;
	self.callback_registered=true end)
end;
function a:new(q,r)
	local s=tonumber(q)+1;
	for g=self.maximum_count,2,-1 do
		_G.notif_cashe[g]=_G.notif_cashe[g-1]
	end;
	_G.notif_cashe[1]={time=s,def_time=s,draw=r}
self:register_callback()end;return a end)()


func.lerp = function(a, b, t)
    return a + (b - a) * t
end
my_font = surface.create_font("Verdana", 12, 500, 128)

local lua = {
    database = {
        configs = "anoflow:configs"
    }
}
presets = {}


local db = {
    lua = "beta",
}

local data = database.read(db.lua)

if not data then
    data = {
        configs = {},
        stats = {
            killed = 0, evaded = 0, loaded = 1
        },
    }
    database.write(db.lua, data)
end

if not data.stats then
    data.stats = {
        killed = 0, evaded = 0, loaded = 1
    }
end

if not data.stats.evaded then
    data.stats.evaded = 0
end

if not data.stats.killed then
    data.stats.killed = 0
end

if not data.stats.loaded then
    data.stats.loaded = 1
end

data.stats.loaded = data.stats.loaded + 1

my = {
    entity = entity.get_local_player()
}

database.write(db.lua, data)

doubletap_charged = function()
    if not ui.get(refs.dt[1]) or not ui.get(refs.dt[2])  then
        return false
    end
    if not entity.is_alive(entity.get_local_player()) or entity.get_local_player() == nil then
        return
    end
    local weapon = entity.get_prop(entity.get_local_player(), "m_hActiveWeapon")
    if weapon == nil then
        return false
    end

    local next_attack = entity.get_prop(entity.get_local_player(), "m_flNextAttack") + 0.25
    local jewfag = entity.get_prop(weapon, "m_flNextPrimaryAttack")
    if jewfag == nil then
        return
    end
    local next_primary_attack = jewfag
    if next_attack == nil or next_primary_attack == nil then
        return false
    end
    return next_attack - globals.curtime() < 0 and next_primary_attack - globals.curtime() < 0
end

function traverse_table_on(tbl, prefix)
    prefix = prefix or ""
    local stack = {{tbl, prefix}}

    while #stack > 0 do
        local current = table.remove(stack)
        local current_tbl = current[1]
        local current_prefix = current[2]

        for key, value in pairs(current_tbl) do
            local full_key = current_prefix .. key
            if type(value) == "table" then
                table.insert(stack, {value, full_key .. "."})
            else
                ui.set_visible(value, true)
            end
        end
    end
end

function traverse_table(tbl, prefix, set_visible)
    prefix = prefix or ""
    local stack = {{tbl, prefix}}
    local visited = {}

    while #stack > 0 do
        local current = table.remove(stack)
        local current_tbl = current[1]
        local current_prefix = current[2]

        if not visited[current_tbl] then
            visited[current_tbl] = true

            for key, value in pairs(current_tbl) do
                local full_key = current_prefix .. key
                if type(value) == "table" then
                    table.insert(stack, {value, full_key .. "."})
                else
                    ui.set_visible(value, set_visible)
                end
            end
        end
    end
end

-- local colors = {
--     {255, 255, 255},
--     {173, 216, 230},
--     {173, 216, 230},
--     {173, 216, 230},
--     {173, 216, 230},
--     {173, 216, 230}
-- }

-- local frame_text = 0
-- local max_length_text = 12
-- local current_color = 1
-- local trail_length = 3

-- local function update_animation()
--     frame_text = frame_text + 1
--     if frame_text % 8 == 0 then
--         local bar_position = math.floor(frame_text / 8) % (max_length_text * 2)
--         local text = ""
        
--         local pos = bar_position
--         local is_returning = bar_position > max_length_text
--         if is_returning then
--             pos = max_length_text - (bar_position - max_length_text)
--         end

--         for i = 1, max_length_text do
--             local color_index = current_color
--             local use_color = false
            
--             if i == pos then
--                 use_color = true
--             elseif (not is_returning and i < pos and pos - i <= trail_length) or 
--                    (is_returning and i > pos and i - pos <= trail_length) then
--                 use_color = true
--                 color_index = math.max(1, current_color - (math.abs(i - pos)))
--             end
            
--             if use_color then
--                 local r, g, b = unpack(colors[color_index])
--                 text = text .. string.format("\a%02X%02X%02Xff▰", r, g, b)
--             else
--                 text = text .. "▱"
--             end
--         end
        
--         if bar_position == max_length_text then
--             current_color = (current_color % #colors) + 1
--         end

--         ui.set(lableb321, text)
--     end
-- end

anoflow.pattern = table.concat{'\x14\x14\x14\xFF', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF', '\x14\x14\x14\xFF', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF', '\x00\x00\x00\x00', '\x14\x14\x14\xFF'}

anoflow.active_tab = 1
anoflow.click = globals.realtime()
anoflow.tab_names = {'Rage', 'Misc'}
anoflow.tab_names_vis = {''}
local icons = {
    [1] = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="75" zoomAndPan="magnify" viewBox="0 0 56.25 56.249997" height="75" preserveAspectRatio="xMidYMid meet" version="1.0"><defs><clipPath id="d5a0a0b02f"><path d="M 6.789062 13.234375 L 48.976562 13.234375 L 48.976562 42.101562 L 6.789062 42.101562 Z M 6.789062 13.234375 " clip-rule="nonzero"/></clipPath></defs><g clip-path="url(#d5a0a0b02f)"><path fill="#ffffff" d="M 18.445312 40.617188 C 18.421875 40.894531 18.40625 41.132812 18.375 41.371094 C 18.304688 41.898438 18.121094 42.074219 17.585938 42.085938 C 16.960938 42.101562 16.335938 42.097656 15.710938 41.988281 C 15.316406 41.914062 14.90625 41.9375 14.5 41.898438 C 13.632812 41.816406 12.773438 41.714844 11.910156 41.628906 C 11.3125 41.574219 10.710938 41.535156 10.109375 41.492188 C 10.0625 41.488281 10.019531 41.488281 9.972656 41.484375 C 9.597656 41.449219 9.417969 41.261719 9.460938 40.894531 C 9.488281 40.625 9.507812 40.34375 9.679688 40.109375 C 9.714844 40.0625 9.742188 40.011719 9.757812 39.953125 C 9.800781 39.820312 9.746094 39.730469 9.613281 39.699219 C 9.558594 39.683594 9.496094 39.695312 9.441406 39.679688 C 9.046875 39.589844 8.628906 39.605469 8.332031 39.21875 C 8.160156 38.996094 7.839844 38.886719 7.601562 38.707031 C 7.382812 38.535156 7.179688 38.347656 6.996094 38.144531 C 6.84375 37.980469 6.800781 37.769531 6.84375 37.535156 C 7.027344 36.480469 7.320312 35.46875 7.8125 34.507812 C 8.21875 33.710938 8.585938 32.898438 9.015625 32.113281 C 9.355469 31.496094 9.761719 30.90625 10.132812 30.300781 C 10.25 30.117188 10.351562 29.929688 10.453125 29.734375 C 10.875 28.9375 11.285156 28.128906 11.621094 27.289062 C 11.96875 26.402344 12.234375 25.488281 12.363281 24.542969 C 12.457031 23.808594 12.207031 23.140625 11.824219 22.519531 C 11.355469 21.757812 10.667969 21.292969 9.796875 21.074219 C 9.558594 21.015625 9.324219 20.960938 9.082031 20.96875 C 8.609375 20.984375 8.265625 20.503906 8.542969 20.019531 C 8.582031 19.949219 8.636719 19.886719 8.6875 19.824219 C 8.828125 19.664062 8.890625 19.484375 8.921875 19.269531 C 9.042969 18.527344 8.964844 17.792969 8.90625 17.054688 C 8.859375 16.441406 8.828125 15.824219 8.898438 15.207031 C 8.960938 14.691406 9.222656 14.421875 9.75 14.386719 C 10.015625 14.367188 10.285156 14.363281 10.550781 14.378906 C 10.789062 14.390625 10.917969 14.28125 11 14.082031 C 11.058594 13.933594 11.109375 13.78125 11.179688 13.636719 C 11.308594 13.34375 11.746094 13.234375 12 13.4375 C 12.070312 13.5 12.160156 13.628906 12.140625 13.691406 C 12.058594 13.933594 12.199219 14.113281 12.28125 14.339844 C 12.457031 14.355469 12.640625 14.382812 12.820312 14.382812 C 14.027344 14.386719 15.234375 14.386719 16.441406 14.386719 C 16.925781 14.386719 17.414062 14.382812 17.894531 14.386719 C 20.597656 14.40625 23.304688 14.429688 26.003906 14.453125 C 28.136719 14.472656 30.273438 14.503906 32.40625 14.5 C 36.722656 14.496094 41.035156 14.472656 45.351562 14.457031 C 45.523438 14.457031 45.699219 14.457031 45.894531 14.457031 C 45.988281 14.234375 46.078125 14.039062 46.15625 13.839844 C 46.324219 13.425781 46.699219 13.332031 47.035156 13.640625 C 47.253906 13.84375 47.441406 14.078125 47.644531 14.296875 C 47.71875 14.378906 47.808594 14.449219 47.890625 14.519531 C 47.980469 14.597656 48.078125 14.65625 48.15625 14.746094 C 48.300781 14.902344 48.414062 15.089844 48.667969 15.113281 C 48.746094 15.121094 48.808594 15.273438 48.871094 15.359375 C 48.882812 15.375 48.878906 15.40625 48.878906 15.429688 C 48.90625 15.976562 48.949219 16.527344 48.957031 17.074219 C 48.960938 17.335938 48.902344 17.597656 48.871094 17.859375 C 48.839844 18.125 48.613281 18.183594 48.414062 18.269531 C 48.363281 18.464844 48.367188 18.632812 48.457031 18.8125 C 48.503906 18.898438 48.527344 19.007812 48.527344 19.105469 C 48.535156 19.597656 48.535156 20.09375 48.527344 20.585938 C 48.523438 20.71875 48.484375 20.859375 48.433594 20.984375 C 48.335938 21.238281 48.199219 21.480469 48.117188 21.742188 C 48.003906 22.105469 47.734375 22.265625 47.386719 22.34375 C 47.242188 22.375 47.089844 22.398438 46.941406 22.421875 C 46.703125 22.464844 46.496094 22.449219 46.300781 22.265625 C 46.054688 22.039062 45.640625 22.101562 45.417969 22.347656 C 45.359375 22.414062 45.277344 22.472656 45.191406 22.492188 C 45.023438 22.53125 44.851562 22.558594 44.679688 22.5625 C 44.015625 22.578125 43.359375 22.574219 42.695312 22.585938 C 41.847656 22.597656 41.003906 22.613281 40.15625 22.632812 C 39.265625 22.65625 38.371094 22.714844 37.480469 22.703125 C 36.777344 22.691406 36.289062 23.011719 35.863281 23.496094 C 35.589844 23.804688 35.421875 24.175781 35.347656 24.570312 C 35.292969 24.847656 35.316406 25.132812 35.320312 25.417969 C 35.328125 25.847656 35.34375 26.28125 35.375 26.710938 C 35.417969 27.351562 35.511719 27.984375 35.792969 28.570312 C 35.808594 28.601562 35.820312 28.632812 35.832031 28.664062 C 35.949219 29.042969 35.789062 29.273438 35.390625 29.292969 C 34.617188 29.328125 33.839844 29.347656 33.066406 29.378906 C 32.59375 29.398438 32.117188 29.425781 31.648438 29.433594 C 30.105469 29.460938 28.5625 29.496094 27.019531 29.511719 C 26.480469 29.515625 25.972656 29.359375 25.5 29.089844 C 25.289062 28.96875 25.074219 28.851562 24.855469 28.757812 C 24.097656 28.460938 23.183594 28.847656 22.863281 29.589844 C 22.691406 29.988281 22.472656 30.371094 22.359375 30.78125 C 22.257812 31.160156 22.097656 31.566406 22.332031 31.96875 C 22.355469 32.003906 22.371094 32.050781 22.386719 32.09375 C 22.484375 32.382812 22.429688 32.535156 22.164062 32.703125 C 22.007812 32.800781 21.851562 32.898438 21.703125 33.003906 C 21.414062 33.203125 21.300781 33.53125 21.148438 33.820312 C 21.011719 34.082031 20.890625 34.359375 20.800781 34.636719 C 20.695312 34.988281 20.605469 35.347656 20.757812 35.714844 C 20.773438 35.753906 20.785156 35.800781 20.800781 35.839844 C 20.945312 36.292969 20.910156 36.425781 20.480469 36.65625 C 19.996094 36.917969 19.761719 37.347656 19.570312 37.824219 C 19.519531 37.953125 19.492188 38.089844 19.433594 38.214844 C 19.226562 38.652344 19.214844 39.09375 19.359375 39.554688 C 19.394531 39.664062 19.417969 39.773438 19.429688 39.886719 C 19.46875 40.230469 19.332031 40.421875 18.992188 40.511719 C 18.8125 40.535156 18.640625 40.570312 18.445312 40.617188 Z M 25.042969 24.75 C 24.84375 25.039062 24.769531 25.214844 24.730469 25.492188 C 24.503906 27.085938 25.867188 28.433594 27.320312 28.34375 C 28.011719 28.300781 28.710938 28.269531 29.402344 28.261719 C 30.285156 28.25 31.164062 28.257812 32.046875 28.273438 C 32.433594 28.28125 32.777344 28.171875 33.097656 27.984375 C 33.820312 27.566406 34.097656 26.886719 34.160156 26.117188 C 34.199219 25.628906 34.140625 25.132812 34.113281 24.644531 C 34.066406 23.765625 33.335938 23.117188 32.574219 22.894531 C 32.371094 22.832031 32.140625 22.835938 31.925781 22.855469 C 31.421875 22.902344 30.914062 22.976562 30.414062 23.042969 C 29.804688 23.121094 29.195312 23.191406 28.589844 23.285156 C 28.277344 23.328125 28.265625 23.355469 28.210938 23.675781 C 28.125 24.210938 28.265625 24.726562 28.359375 25.238281 C 28.371094 25.332031 28.460938 25.417969 28.535156 25.484375 C 28.796875 25.738281 29.078125 25.984375 29.339844 26.238281 C 29.558594 26.445312 29.773438 26.65625 29.976562 26.875 C 30.082031 26.984375 30.15625 27.117188 30.066406 27.28125 C 29.984375 27.421875 29.859375 27.449219 29.714844 27.441406 C 29.636719 27.4375 29.5625 27.453125 29.457031 27.464844 C 29.550781 27.632812 29.652344 27.785156 29.515625 27.929688 C 29.363281 28.078125 29.1875 28.011719 29.03125 27.929688 C 28.773438 27.800781 28.519531 27.664062 28.269531 27.523438 C 27.691406 27.179688 27.292969 26.648438 26.816406 26.199219 C 26.773438 26.152344 26.730469 26.082031 26.71875 26.023438 C 26.6875 25.8125 26.554688 25.75 26.363281 25.71875 C 26.089844 25.679688 25.820312 25.605469 25.550781 25.539062 C 25.199219 25.449219 25.183594 25.429688 25.253906 25.066406 C 25.296875 24.875 25.25 24.78125 25.042969 24.75 Z M 25.042969 24.75 " fill-opacity="1" fill-rule="nonzero"/></g></svg>',
    [2] = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="75" zoomAndPan="magnify" viewBox="0 0 56.25 56.249997" height="75" preserveAspectRatio="xMidYMid meet" version="1.0"><defs><clipPath id="e2f1bf575d"><path d="M 8.128906 8.800781 L 47.359375 8.800781 L 47.359375 46.546875 L 8.128906 46.546875 Z M 8.128906 8.800781 " clip-rule="nonzero"/></clipPath></defs><g clip-path="url(#e2f1bf575d)"><path fill="#ffffff" d="M 18.921875 27.832031 C 17.371094 27.832031 16.117188 26.582031 16.117188 25.039062 C 16.117188 23.496094 17.371094 22.246094 18.921875 22.246094 C 20.46875 22.246094 21.726562 23.496094 21.726562 25.039062 C 21.726562 26.582031 20.46875 27.832031 18.921875 27.832031 Z M 29.324219 23.597656 L 28.761719 23.515625 C 27.960938 23.394531 27.292969 22.851562 27.015625 22.09375 C 26.929688 21.867188 26.839844 21.648438 26.738281 21.429688 C 26.394531 20.695312 26.480469 19.835938 26.960938 19.1875 L 27.300781 18.730469 C 27.433594 18.550781 27.417969 18.300781 27.257812 18.140625 L 25.847656 16.738281 C 25.6875 16.578125 25.4375 16.558594 25.253906 16.691406 L 24.796875 17.03125 C 24.144531 17.511719 23.28125 17.59375 22.546875 17.253906 C 22.328125 17.152344 22.105469 17.0625 21.878906 16.980469 C 21.117188 16.703125 20.570312 16.035156 20.453125 15.238281 L 20.367188 14.675781 C 20.335938 14.457031 20.144531 14.289062 19.917969 14.289062 L 17.921875 14.289062 C 17.699219 14.289062 17.507812 14.457031 17.476562 14.675781 L 17.390625 15.238281 C 17.273438 16.035156 16.726562 16.703125 15.964844 16.980469 C 15.738281 17.0625 15.515625 17.152344 15.296875 17.253906 C 14.5625 17.59375 13.699219 17.511719 13.046875 17.03125 L 12.589844 16.691406 C 12.40625 16.558594 12.15625 16.578125 11.996094 16.738281 L 10.585938 18.140625 C 10.425781 18.300781 10.40625 18.550781 10.542969 18.730469 L 10.878906 19.1875 C 11.363281 19.835938 11.449219 20.695312 11.105469 21.429688 C 11.003906 21.648438 10.914062 21.867188 10.828125 22.09375 C 10.550781 22.851562 9.878906 23.394531 9.082031 23.515625 L 8.519531 23.597656 C 8.296875 23.632812 8.128906 23.820312 8.128906 24.046875 L 8.128906 26.03125 C 8.128906 26.257812 8.296875 26.449219 8.519531 26.480469 L 9.082031 26.5625 C 9.878906 26.683594 10.550781 27.226562 10.828125 27.984375 C 10.914062 28.210938 11.003906 28.433594 11.105469 28.648438 C 11.449219 29.382812 11.363281 30.242188 10.878906 30.890625 L 10.542969 31.347656 C 10.40625 31.527344 10.425781 31.777344 10.585938 31.9375 L 11.996094 33.34375 C 12.15625 33.5 12.40625 33.519531 12.589844 33.386719 L 13.046875 33.046875 C 13.699219 32.566406 14.5625 32.484375 15.296875 32.824219 C 15.515625 32.925781 15.738281 33.015625 15.964844 33.097656 C 16.726562 33.375 17.273438 34.042969 17.390625 34.839844 L 17.476562 35.402344 C 17.507812 35.625 17.699219 35.789062 17.921875 35.789062 L 19.917969 35.789062 C 20.144531 35.789062 20.335938 35.625 20.367188 35.402344 L 20.453125 34.839844 C 20.570312 34.042969 21.117188 33.375 21.878906 33.097656 C 22.105469 33.015625 22.328125 32.925781 22.546875 32.824219 C 23.28125 32.484375 24.144531 32.566406 24.796875 33.046875 L 25.253906 33.386719 C 25.4375 33.519531 25.6875 33.5 25.847656 33.34375 L 27.257812 31.9375 C 27.417969 31.777344 27.433594 31.527344 27.300781 31.347656 L 26.960938 30.890625 C 26.480469 30.242188 26.394531 29.382812 26.738281 28.648438 C 26.839844 28.433594 26.929688 28.210938 27.015625 27.984375 C 27.292969 27.226562 27.960938 26.683594 28.761719 26.5625 L 29.324219 26.480469 C 29.546875 26.449219 29.710938 26.257812 29.710938 26.03125 L 29.710938 24.046875 C 29.710938 23.820312 29.546875 23.632812 29.324219 23.597656 Z M 36.566406 38.582031 C 35.015625 38.582031 33.761719 37.332031 33.761719 35.789062 C 33.761719 34.246094 35.015625 32.996094 36.566406 32.996094 C 38.117188 32.996094 39.371094 34.246094 39.371094 35.789062 C 39.371094 37.332031 38.117188 38.582031 36.566406 38.582031 Z M 46.96875 34.347656 L 46.40625 34.261719 C 45.609375 34.144531 44.9375 33.601562 44.660156 32.84375 C 44.574219 32.617188 44.484375 32.394531 44.382812 32.175781 C 44.039062 31.445312 44.125 30.585938 44.609375 29.933594 L 44.945312 29.480469 C 45.082031 29.300781 45.0625 29.046875 44.902344 28.890625 L 43.492188 27.484375 C 43.332031 27.328125 43.082031 27.308594 42.898438 27.441406 L 42.441406 27.777344 C 41.789062 28.261719 40.925781 28.34375 40.191406 28.003906 C 39.972656 27.902344 39.75 27.8125 39.523438 27.726562 C 38.761719 27.449219 38.214844 26.78125 38.097656 25.984375 L 38.011719 25.425781 C 37.980469 25.203125 37.789062 25.039062 37.5625 25.039062 L 35.570312 25.039062 C 35.34375 25.039062 35.152344 25.203125 35.121094 25.425781 L 35.035156 25.984375 C 34.917969 26.78125 34.371094 27.449219 33.609375 27.726562 C 33.382812 27.8125 33.160156 27.902344 32.941406 28.003906 C 32.207031 28.34375 31.34375 28.261719 30.691406 27.777344 L 30.234375 27.441406 C 30.050781 27.308594 29.800781 27.328125 29.640625 27.484375 L 28.230469 28.890625 C 28.070312 29.046875 28.050781 29.300781 28.1875 29.480469 L 28.527344 29.933594 C 29.007812 30.585938 29.09375 31.445312 28.75 32.175781 C 28.648438 32.394531 28.558594 32.617188 28.472656 32.84375 C 28.195312 33.601562 27.523438 34.144531 26.726562 34.261719 L 26.164062 34.347656 C 25.941406 34.378906 25.773438 34.570312 25.773438 34.792969 L 25.773438 36.78125 C 25.773438 37.003906 25.941406 37.195312 26.164062 37.230469 L 26.726562 37.3125 C 27.523438 37.429688 28.195312 37.976562 28.472656 38.730469 C 28.558594 38.957031 28.648438 39.179688 28.75 39.398438 C 29.09375 40.132812 29.007812 40.992188 28.527344 41.640625 L 28.1875 42.097656 C 28.050781 42.277344 28.070312 42.527344 28.230469 42.683594 L 29.640625 44.089844 C 29.800781 44.25 30.050781 44.269531 30.234375 44.132812 L 30.691406 43.796875 C 31.34375 43.316406 32.207031 43.230469 32.941406 43.570312 C 33.160156 43.671875 33.382812 43.765625 33.609375 43.847656 C 34.371094 44.125 34.917969 44.792969 35.035156 45.589844 L 35.121094 46.148438 C 35.152344 46.371094 35.34375 46.535156 35.570312 46.535156 L 37.5625 46.535156 C 37.789062 46.535156 37.980469 46.371094 38.011719 46.148438 L 38.097656 45.589844 C 38.214844 44.792969 38.761719 44.125 39.523438 43.847656 C 39.75 43.765625 39.972656 43.671875 40.191406 43.570312 C 40.925781 43.230469 41.789062 43.316406 42.441406 43.796875 L 42.898438 44.132812 C 43.082031 44.269531 43.332031 44.25 43.492188 44.089844 L 44.902344 42.683594 C 45.0625 42.527344 45.082031 42.277344 44.945312 42.097656 L 44.609375 41.640625 C 44.125 40.992188 44.039062 40.132812 44.382812 39.398438 C 44.484375 39.179688 44.574219 38.957031 44.660156 38.730469 C 44.9375 37.976562 45.609375 37.429688 46.40625 37.3125 L 46.96875 37.230469 C 47.191406 37.195312 47.359375 37.003906 47.359375 36.78125 L 47.359375 34.792969 C 47.359375 34.570312 47.191406 34.378906 46.96875 34.347656 Z M 34.996094 18.6875 C 33.824219 18.6875 32.878906 17.742188 32.878906 16.582031 C 32.878906 15.417969 33.824219 14.472656 34.996094 14.472656 C 36.164062 14.472656 37.109375 15.417969 37.109375 16.582031 C 37.109375 17.742188 36.164062 18.6875 34.996094 18.6875 Z M 42.511719 15.539062 L 42.105469 15.480469 C 41.527344 15.394531 41.042969 15 40.839844 14.453125 C 40.78125 14.289062 40.714844 14.128906 40.640625 13.972656 C 40.394531 13.441406 40.457031 12.820312 40.804688 12.351562 L 41.050781 12.023438 C 41.144531 11.890625 41.132812 11.710938 41.019531 11.597656 L 40 10.582031 C 39.882812 10.464844 39.703125 10.453125 39.570312 10.550781 L 39.242188 10.792969 C 38.769531 11.140625 38.144531 11.203125 37.613281 10.957031 C 37.457031 10.882812 37.292969 10.816406 37.128906 10.757812 C 36.582031 10.554688 36.1875 10.074219 36.101562 9.496094 L 36.039062 9.09375 C 36.015625 8.933594 35.878906 8.8125 35.714844 8.8125 L 34.273438 8.8125 C 34.109375 8.8125 33.972656 8.933594 33.949219 9.09375 L 33.886719 9.496094 C 33.800781 10.074219 33.40625 10.554688 32.859375 10.757812 C 32.695312 10.816406 32.53125 10.882812 32.375 10.957031 C 31.84375 11.203125 31.21875 11.140625 30.746094 10.792969 L 30.417969 10.550781 C 30.285156 10.453125 30.105469 10.464844 29.988281 10.582031 L 28.96875 11.597656 C 28.855469 11.710938 28.84375 11.890625 28.9375 12.023438 L 29.183594 12.351562 C 29.53125 12.820312 29.59375 13.441406 29.347656 13.972656 C 29.273438 14.128906 29.207031 14.289062 29.148438 14.453125 C 28.945312 15 28.460938 15.394531 27.882812 15.480469 L 27.476562 15.539062 C 27.316406 15.5625 27.195312 15.699219 27.195312 15.863281 L 27.195312 17.296875 C 27.195312 17.460938 27.316406 17.597656 27.476562 17.621094 L 27.882812 17.683594 C 28.460938 17.765625 28.945312 18.160156 29.148438 18.707031 C 29.207031 18.871094 29.273438 19.03125 29.347656 19.1875 C 29.59375 19.71875 29.53125 20.339844 29.183594 20.808594 L 28.9375 21.140625 C 28.84375 21.269531 28.855469 21.449219 28.96875 21.5625 L 29.988281 22.578125 C 30.105469 22.695312 30.285156 22.707031 30.417969 22.609375 L 30.746094 22.367188 C 31.21875 22.019531 31.84375 21.960938 32.375 22.203125 C 32.53125 22.277344 32.695312 22.34375 32.859375 22.40625 C 33.40625 22.605469 33.800781 23.085938 33.886719 23.664062 L 33.949219 24.066406 C 33.972656 24.230469 34.109375 24.347656 34.273438 24.347656 L 35.714844 24.347656 C 35.878906 24.347656 36.015625 24.230469 36.039062 24.066406 L 36.101562 23.664062 C 36.1875 23.085938 36.582031 22.605469 37.128906 22.40625 C 37.292969 22.34375 37.457031 22.277344 37.613281 22.203125 C 38.144531 21.960938 38.769531 22.019531 39.242188 22.367188 L 39.570312 22.609375 C 39.703125 22.707031 39.882812 22.695312 40 22.578125 L 41.019531 21.5625 C 41.132812 21.449219 41.144531 21.269531 41.050781 21.140625 L 40.804688 20.808594 C 40.457031 20.339844 40.394531 19.71875 40.640625 19.1875 C 40.714844 19.03125 40.78125 18.871094 40.839844 18.707031 C 41.042969 18.160156 41.527344 17.765625 42.105469 17.683594 L 42.511719 17.621094 C 42.671875 17.597656 42.792969 17.460938 42.792969 17.296875 L 42.792969 15.863281 C 42.792969 15.699219 42.671875 15.5625 42.511719 15.539062 " fill-opacity="1" fill-rule="nonzero"/></g></svg>',
    [3] = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="75" zoomAndPan="magnify" viewBox="0 0 56.25 56.249997" height="75" preserveAspectRatio="xMidYMid meet" version="1.0"><defs><clipPath id="d8778e503a"><path d="M 27 6.660156 L 29 6.660156 L 29 14 L 27 14 Z M 27 6.660156 " clip-rule="nonzero"/></clipPath><clipPath id="45fa98ade8"><path d="M 6.660156 27 L 14 27 L 14 29 L 6.660156 29 Z M 6.660156 27 " clip-rule="nonzero"/></clipPath><clipPath id="05274b89bf"><path d="M 27 41 L 29 41 L 29 48.847656 L 27 48.847656 Z M 27 41 " clip-rule="nonzero"/></clipPath><clipPath id="5e834d7b7d"><path d="M 41 27 L 48.847656 27 L 48.847656 29 L 41 29 Z M 41 27 " clip-rule="nonzero"/></clipPath></defs><path fill="#ffffff" d="M 27.753906 40.027344 C 20.984375 40.027344 15.480469 34.523438 15.480469 27.753906 C 15.480469 20.984375 20.984375 15.480469 27.753906 15.480469 Z M 27.753906 14.652344 C 20.527344 14.652344 14.652344 20.527344 14.652344 27.753906 C 14.652344 34.976562 20.527344 40.855469 27.753906 40.855469 C 34.976562 40.855469 40.855469 34.976562 40.855469 27.753906 C 40.855469 20.527344 34.976562 14.652344 27.753906 14.652344 " fill-opacity="1" fill-rule="nonzero"/><g clip-path="url(#d8778e503a)"><path fill="#ffffff" d="M 27.753906 13.625 C 27.980469 13.625 28.164062 13.441406 28.164062 13.214844 L 28.164062 7.070312 C 28.164062 6.84375 27.980469 6.660156 27.753906 6.660156 C 27.527344 6.660156 27.339844 6.84375 27.339844 7.070312 L 27.339844 13.214844 C 27.339844 13.441406 27.527344 13.625 27.753906 13.625 " fill-opacity="1" fill-rule="nonzero"/></g><path fill="#ffffff" d="M 17.179688 17.765625 C 17.261719 17.84375 17.367188 17.886719 17.472656 17.886719 C 17.578125 17.886719 17.683594 17.84375 17.765625 17.765625 C 17.929688 17.605469 17.929688 17.339844 17.765625 17.179688 L 13.421875 12.839844 C 13.261719 12.675781 12.996094 12.675781 12.839844 12.839844 C 12.675781 13 12.675781 13.261719 12.839844 13.421875 L 17.179688 17.765625 " fill-opacity="1" fill-rule="nonzero"/><g clip-path="url(#45fa98ade8)"><path fill="#ffffff" d="M 13.625 27.753906 C 13.625 27.527344 13.441406 27.339844 13.214844 27.339844 L 7.070312 27.339844 C 6.84375 27.339844 6.660156 27.527344 6.660156 27.753906 C 6.660156 27.980469 6.84375 28.164062 7.070312 28.164062 L 13.214844 28.164062 C 13.441406 28.164062 13.625 27.980469 13.625 27.753906 " fill-opacity="1" fill-rule="nonzero"/></g><path fill="#ffffff" d="M 17.179688 37.742188 L 12.839844 42.082031 C 12.675781 42.246094 12.675781 42.507812 12.839844 42.667969 C 12.917969 42.75 13.023438 42.789062 13.128906 42.789062 C 13.234375 42.789062 13.339844 42.75 13.421875 42.667969 L 17.765625 38.328125 C 17.929688 38.164062 17.929688 37.90625 17.765625 37.742188 C 17.605469 37.582031 17.339844 37.582031 17.179688 37.742188 " fill-opacity="1" fill-rule="nonzero"/><g clip-path="url(#05274b89bf)"><path fill="#ffffff" d="M 27.753906 41.878906 C 27.527344 41.878906 27.339844 42.0625 27.339844 42.292969 L 27.339844 48.433594 C 27.339844 48.664062 27.527344 48.847656 27.753906 48.847656 C 27.980469 48.847656 28.164062 48.664062 28.164062 48.433594 L 28.164062 42.292969 C 28.164062 42.0625 27.980469 41.878906 27.753906 41.878906 " fill-opacity="1" fill-rule="nonzero"/></g><path fill="#ffffff" d="M 38.328125 37.742188 C 38.164062 37.582031 37.90625 37.582031 37.738281 37.742188 C 37.582031 37.90625 37.582031 38.164062 37.738281 38.328125 L 42.082031 42.667969 C 42.164062 42.75 42.269531 42.789062 42.375 42.789062 C 42.480469 42.789062 42.585938 42.75 42.667969 42.667969 C 42.828125 42.507812 42.828125 42.246094 42.667969 42.082031 L 38.328125 37.742188 " fill-opacity="1" fill-rule="nonzero"/><g clip-path="url(#5e834d7b7d)"><path fill="#ffffff" d="M 48.433594 27.339844 L 42.292969 27.339844 C 42.0625 27.339844 41.878906 27.527344 41.878906 27.753906 C 41.878906 27.980469 42.0625 28.164062 42.292969 28.164062 L 48.433594 28.164062 C 48.664062 28.164062 48.847656 27.980469 48.847656 27.753906 C 48.847656 27.527344 48.664062 27.339844 48.433594 27.339844 " fill-opacity="1" fill-rule="nonzero"/></g><path fill="#ffffff" d="M 38.03125 17.886719 C 38.136719 17.886719 38.242188 17.84375 38.328125 17.765625 L 42.667969 13.421875 C 42.828125 13.261719 42.828125 13 42.667969 12.839844 C 42.503906 12.675781 42.246094 12.675781 42.082031 12.839844 L 37.738281 17.179688 C 37.582031 17.339844 37.582031 17.605469 37.738281 17.765625 C 37.820312 17.84375 37.925781 17.886719 38.03125 17.886719 " fill-opacity="1" fill-rule="nonzero"/></svg>',
    [4] = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="75" zoomAndPan="magnify" viewBox="0 0 56.25 56.249997" height="75" preserveAspectRatio="xMidYMid meet" version="1.0"><defs><clipPath id="cf969e9ea1"><path d="M 10.824219 7.6875 L 44.871094 7.6875 L 44.871094 47.65625 L 10.824219 47.65625 Z M 10.824219 7.6875 " clip-rule="nonzero"/></clipPath></defs><g clip-path="url(#cf969e9ea1)"><path fill="#ffffff" d="M 44.5 13.515625 C 43.996094 12.949219 43.160156 13.097656 42.488281 12.945312 C 37.621094 12.152344 33.046875 10.179688 28.675781 7.972656 C 28.46875 7.875 28.253906 7.792969 28.035156 7.714844 L 27.71875 7.714844 C 26.960938 7.941406 26.289062 8.371094 25.574219 8.695312 C 21.742188 10.5625 17.722656 12.167969 13.5 12.902344 C 12.890625 13.023438 12.257812 13.015625 11.664062 13.191406 C 11.191406 13.394531 10.847656 13.886719 10.875 14.40625 C 10.824219 17.289062 10.929688 20.175781 11.15625 23.054688 C 11.488281 26.714844 12.019531 30.394531 13.261719 33.875 C 13.863281 35.488281 14.632812 37.074219 15.785156 38.375 C 18.9375 42.070312 22.855469 45.101562 27.140625 47.40625 C 27.324219 47.496094 27.511719 47.570312 27.707031 47.628906 L 27.984375 47.628906 C 28.746094 47.414062 29.378906 46.910156 30.078125 46.554688 C 33.398438 44.609375 36.4375 42.183594 39.050781 39.375 C 39.839844 38.488281 40.652344 37.601562 41.21875 36.554688 C 42.535156 34.238281 43.230469 31.640625 43.746094 29.050781 C 44.640625 24.335938 44.875 19.519531 44.847656 14.726562 C 44.859375 14.300781 44.828125 13.832031 44.5 13.515625 Z M 42.652344 27.992188 C 42.117188 30.898438 41.421875 33.855469 39.84375 36.402344 C 38.441406 38.410156 36.636719 40.101562 34.789062 41.699219 C 32.660156 43.503906 30.316406 45.046875 27.855469 46.375 C 23.542969 44.054688 19.59375 41.007812 16.476562 37.238281 C 14.867188 35.199219 14.109375 32.667969 13.507812 30.191406 C 12.34375 25 12.070312 19.652344 12.144531 14.347656 C 17.710938 13.722656 22.910156 11.457031 27.859375 8.96875 C 32.804688 11.457031 38.011719 13.71875 43.578125 14.34375 C 43.648438 18.90625 43.425781 23.488281 42.652344 27.992188 Z M 42.652344 27.992188 " fill-opacity="1" fill-rule="nonzero"/></g><path fill="#ffffff" d="M 14.644531 16.511719 C 14.738281 21.421875 15.023438 26.382812 16.332031 31.140625 C 16.84375 32.894531 17.503906 34.679688 18.769531 36.046875 C 21.308594 39.058594 24.460938 41.515625 27.859375 43.515625 C 31.472656 41.386719 34.808594 38.730469 37.433594 35.460938 C 38.675781 33.773438 39.265625 31.71875 39.753906 29.710938 C 40.730469 25.386719 40.996094 20.933594 41.070312 16.511719 C 36.445312 15.628906 32.054688 13.847656 27.859375 11.769531 C 23.65625 13.84375 19.269531 15.632812 14.644531 16.511719 Z M 14.644531 16.511719 " fill-opacity="1" fill-rule="nonzero"/></svg>',
}

ffi.cdef[[typedef void (__thiscall* EnableInput)(void*, bool); typedef void (__thiscall* ResetInputState)(void*);]]

local inputSystem = ffi.cast('void***', client.create_interface('inputsystem.dll', 'InputSystemVersion001'))
local enableInput = ffi.cast('EnableInput', inputSystem[0][11])
local resetInputState = ffi.cast('ResetInputState', inputSystem[0][39])

outlined_rectangle = function(x, y, w, h, r, g, b, a, t)
    renderer.rectangle(x + t, y, w - t * 2, t, r, g, b, a)
    renderer.rectangle(x + w - t, y, t, h - t, r, g, b, a)
    renderer.rectangle(x, y + h - t, w, t, r, g, b, a)
    renderer.rectangle(x, y, t, h - t, r, g, b, a)
end

window = function(x, y, w, h)
    outlined_rectangle(x, y, w, h, 12, 12, 12, 255, 1)
    outlined_rectangle(x + 1, y + 1, w - 2, h - 2, 60, 60, 60, 255, 1)
    outlined_rectangle(x + 2, y + 2, w - 4, h - 4, 40, 40, 40, 255, 3)
    outlined_rectangle(x + 5, y + 5, w - 10, h - 10, 60, 60, 60, 255, 1)
    renderer.rectangle(x + 6, y + 6, w - 12, h - 12, 12, 12, 12, 255)
    renderer.texture(renderer.load_rgba(anoflow.pattern, 4, 4), x + 6, y + 6, w - 12, h - 12, 255, 255, 255, 255, 'r')
end

tabs = function(x, y, w, h, tab_names)
    local dpi_scale = tonumber(ui.get(refs.dpi):sub(1, -2)) / 100
    local tab_height = math.floor(75 * dpi_scale)
    local total_tabs_height = #tab_names * tab_height
    
    window(x, y, w, total_tabs_height + 12)
    
    for i, tab_name in ipairs(tab_names) do
        local tab_y = y + 6 + (i - 1) * tab_height
        
        if anoflow.active_tab ~= i then
            renderer.rectangle(x + 6, tab_y, w - 12, tab_height, 12, 12, 12, 255)
            renderer.rectangle(x + 6, tab_y + tab_height - 1, w - 12, 1, 40, 40, 40, 255)
        else
            renderer.rectangle(x + 6, tab_y, 1, tab_height, 40, 40, 40, 255)
            renderer.rectangle(x + w - 7, tab_y, 1, tab_height, 40, 40, 40, 255)
            renderer.rectangle(x + 6, tab_y + tab_height - 1, w - 12, 1, 40, 40, 40, 255)
        end

        local visible = (inboundary(x + 6, tab_y, w - 12, tab_height) or anoflow.active_tab == i) and 180 or 110

        local svg = renderer.load_svg(icons[i], 40, 40)
        renderer.texture(svg, x + w/2 - 20, tab_y + tab_height/2 - 20, 40, 40, 255, 255, 255, visible)

        if inboundary(x + 6, tab_y, w - 12, tab_height) and client.key_state(0x01) and globals.realtime() > anoflow.click then
            anoflow.active_tab = i
            anoflow.click = globals.realtime() + 0.01
        end
    end
end

inboundary = function(x, y, w, h)
    local mouse = vector(ui.mouse_position())
    return mouse.x >= x and mouse.x <= x + w and mouse.y >= y and mouse.y <= y + h
end

    -- enableInput(inputSystem, not input)
    
    -- if input then
    --     resetInputState(inputSystem)
    -- end


-- def_alpha = ui.get(refs.view_color[2])
-- function dis_view()
--     if ui.get(menu.visualsTab.viewmodel_alpha) then
--         if ui.get(refs.th[2]) then
--             ui.set(refs.view_color[2], 0, 0, 0, 0)
--         else
--             ui.set(refs.view_color[2], def_alpha)
--         end
--     end
-- end
client.set_event_callback('paint_ui', function()
    -- dis_view()
    local dpi_scale = tonumber(ui.get(refs.dpi):sub(1, -2)) / 100
    local position = vector(ui.menu_position())
    local size = vector(ui.menu_size())
    local sidebar_width = math.floor(75 * dpi_scale)
    local sidebar_x = position.x - sidebar_width - math.floor(5 * dpi_scale)
    local sidebar_y = position.y
    local input = inboundary(sidebar_x, sidebar_y, sidebar_width, size.y) and ui.is_menu_open()
    if not ui.is_menu_open() then return end
    
    if ui.get(tabPicker) == " Settings" and ui.get(mTabs) == " Miscellaneous" then
        window(sidebar_x, sidebar_y, sidebar_width, 30--[[size.y - 600]])
        tabs(sidebar_x, sidebar_y, sidebar_width, 75--[[math.floor(75 * dpi_scale)]], anoflow.tab_names)
    end
end)

local isEnabled, saved = true, true
event_callback("paint_ui", function()
    -- update_animation()
    if data.stats.killed < 1000 then
        ui.set(menu.infoTab.killed, " Killed with anoflow: " .. data.stats.killed)
    else
        ui.set(menu.infoTab.killed, " Killed with anoflow: " .. string.sub(tostring(data.stats.killed), 0, 1) .. "." .. string.sub(tostring(data.stats.killed), 1, 1) .. "k")
    end

    if data.stats.evaded < 1000 then
        ui.set(menu.infoTab.evaded, " Evaded misses to anoflow: " .. data.stats.evaded)
    else
        ui.set(menu.infoTab.evaded, " Evaded misses to anoflow: " .. string.sub(tostring(data.stats.evaded), 0, 1) .. "." .. string.sub(tostring(data.stats.evaded), 1, 1) .. "k")
    end
    
    vars.activeState = vars.sToInt[ui.get(menu.builderTab.state)]
    if ui.is_menu_open() then
        ui.set(menu.infoTab.label1488, " Session time: \aFFFFFFFF"..get_elapsed_time())
    end
    -- ui.set(menu.infoTab.evaded, " Evaded misses to anoflow: " .. data.stats.evaded)
    ui.set(aaBuilder[1].enableState, true)
    --ui.set_visible(menu.infoTab.spons, false)
    ui.set_visible(tabPicker, isEnabled)
    ui.set_visible(aaTabs, ui.get(tabPicker) == " Anti-aims" and isEnabled)
    ui.set_visible(mTabs, ui.get(tabPicker) == " Settings" and isEnabled)
    ui.set_visible(iTabs, ui.get(tabPicker) == " Home" and isEnabled)
    traverse_table(binds)
    local isAATab = ui.get(tabPicker) == " Anti-aims" and ui.get(aaTabs) == " Settings"
    local isBuilderTab = ui.get(tabPicker) == " Anti-aims" and ui.get(aaTabs) == " Builder"
    local isVisualsTab = ui.get(tabPicker) == " Settings" and ui.get(mTabs) == " Visuals"
    local isMiscTab = ui.get(tabPicker) == " Settings" and ui.get(mTabs) == " Miscellaneous"
    local isCFGTab = ui.get(tabPicker) == " Home"
    local isINFOTab = ui.get(tabPicker) == " Home" and ui.get(iTabs) == " Configurations"
    local isCUSTtab = ui.get(tabPicker) == " Home" and ui.get(iTabs) == " Other"
    for i = 1, #vars.aaStates do
        local stateEnabled = ui.get(aaBuilder[i].enableState)
        ui.set_visible(aaBuilder[i].label_huy, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].label_huy2, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].label_huy2a, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].enableState, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_enabled(aaBuilder[1].enableState, false)

        ui.set_visible(aaBuilder[i].label_huya, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].label_huya2, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].label_huya222, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].label_huya22dsa2, vars.activeState == i  and isBuilderTab and isEnabled)
        ui.set_visible(aaBuilder[i].force_defensive, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].defensive_delay, vars.activeState == i and ui.get(aaBuilder[i].force_defensive) and isBuilderTab and stateEnabled and isEnabled)        
        ui.set_visible(aaBuilder[i].stateDisablers, vars.activeState == 9 and i == 9 and isBuilderTab and ui.get(aaBuilder[9].enableState) and isEnabled)
        ui.set_visible(aaBuilder[i].pitch, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yaw_base, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i]._offset, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yaw_main, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yaw, false) --(vars.activeState == i and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].yawLeft, (vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and (ui.get(aaBuilder[i].yaw) == " Left & Right") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].yawRight, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and (ui.get(aaBuilder[i].yaw) == " Left & Right") and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yaw_jitter, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yawJitter, false)-- vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].wayFirst, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 5  and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].waySecond, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 5  and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].wayThird, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 5  and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_1, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_2, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_3, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_4, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_5, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_6, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].j_7, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].yawJitterStatic, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) ~= 1 and ui.get(aaBuilder[i].yaw_jitter) ~= 5 and ui.get(aaBuilder[i].yaw_jitter) ~= 6 and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].sway_speed, vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) == 8 and isBuilderTab and stateEnabled and isEnabled)
        --ui.set_visible(aaBuilder[i].bodyYaw, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].bodyYaw, false)
        ui.set_visible(aaBuilder[i].body_yaw, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].desync, vars.activeState == i and ui.get(aaBuilder[i].body_yaw) ~= " Jitter" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].bodyYawStatic, false)
        --ui.set_visible(aaBuilder[i].bodyYawStatic, vars.activeState == i and ui.get(aaBuilder[i].bodyYaw) ~= "Disable" and ui.get(aaBuilder[i].bodyYaw) ~= " Jitter" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].delayed_body, vars.activeState == i and ui.get(aaBuilder[i].body_yaw) == " Jitter" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].random_delay, vars.activeState == i and ui.get(aaBuilder[i].body_yaw) == " Jitter" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].randomization, (vars.activeState == i and ui.get(aaBuilder[i].yaw) ~= "Off" and (ui.get(aaBuilder[i].yaw) == " Left & Right") and isBuilderTab and stateEnabled and isEnabled))
        
        ui.set_visible(aaBuilder[i].defensiveAntiAim, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)

        ui.set_visible(aaBuilder[i].def_pitch, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_pitchSlider , ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " Custom" and isEnabled))
        ui.set_visible(aaBuilder[i].def_pitch_s1 , ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and (ui.get(aaBuilder[i].def_pitch) == " Random" or ui.get(aaBuilder[i].def_pitch) == " Switch" or ui.get(aaBuilder[i].def_pitch) == " Flick" or ui.get(aaBuilder[i].def_pitch) == " Dynamic" or ui.get(aaBuilder[i].def_pitch) == " Sway") and isEnabled))
        ui.set_visible(aaBuilder[i].def_pitch_s2 , ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and (ui.get(aaBuilder[i].def_pitch) == " Random" or ui.get(aaBuilder[i].def_pitch) == " Switch" or ui.get(aaBuilder[i].def_pitch) == " Flick" or ui.get(aaBuilder[i].def_pitch) == " Dynamic" or ui.get(aaBuilder[i].def_pitch) == " Sway") and isEnabled))
        ui.set_visible(aaBuilder[i].def_slow_gen, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " Random" and isEnabled))
        ui.set_visible(aaBuilder[i].def_dyn_speed, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and (ui.get(aaBuilder[i].def_pitch) == " Dynamic" or ui.get(aaBuilder[i].def_pitch) == " Sway") and isEnabled))
        ui.set_visible(aaBuilder[i].def_jit_delay, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " Switch" and isEnabled))
        ui.set_visible(aaBuilder[i].def_3_1, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " 3-way" and isEnabled))
        ui.set_visible(aaBuilder[i].def_3_2, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " 3-way" and isEnabled))
        ui.set_visible(aaBuilder[i].def_3_3, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and ui.get(aaBuilder[i].def_pitch) == " 3-way" and isEnabled))
        ui.set_visible(aaBuilder[i].def_yawMode, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yawStatic, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Custom" or ui.get(aaBuilder[i].def_yawMode) == " Spin") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yaw_spin_range, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " Spin V2" and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yaw_spin_speed, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " Spin V2" and isBuilderTab and stateEnabled and isEnabled))

        ui.set_visible(aaBuilder[i].def_yaw_left, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Switch" or ui.get(aaBuilder[i].def_yawMode) == " Flick" or ui.get(aaBuilder[i].def_yawMode) == " Random" or ui.get(aaBuilder[i].def_yawMode) == " Distorion") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yaw_right, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Switch" or ui.get(aaBuilder[i].def_yawMode) == " Flick" or ui.get(aaBuilder[i].def_yawMode) == " Random" or ui.get(aaBuilder[i].def_yawMode) == " Distorion") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yaw_switch_delay, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Switch" or ui.get(aaBuilder[i].def_yawMode) == " Flick") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_switch_brute, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Switch") and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_yaw_random, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Switch" or ui.get(aaBuilder[i].def_yawMode) == " Custom" or ui.get(aaBuilder[i].def_yawMode) == " Spin" or ui.get(aaBuilder[i].def_yawMode) == " Flick") and isBuilderTab and stateEnabled and isEnabled))

        ui.set_visible(aaBuilder[i].def_yaw_exploit_speed, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and (ui.get(aaBuilder[i].def_yawMode) == " Distorion") and isBuilderTab and stateEnabled and isEnabled))
        
        ui.set_visible(aaBuilder[i].def_slow_gena, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " Random" and isBuilderTab and stateEnabled and isEnabled))
        
        ui.set_visible(aaBuilder[i].def_way_1, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " 3-ways" and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_way_2, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " 3-ways" and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].def_way_3, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and ui.get(aaBuilder[i].def_yawMode) == " 3-ways" and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].bidy, ui.get(aaBuilder[i].defensiveAntiAim) and (vars.activeState == i and isBuilderTab and stateEnabled and isEnabled))
        ui.set_visible(aaBuilder[i].aa_ran, false)
        ui.set_visible(aaBuilder[i].aa_ran_1, false)
        ui.set_visible(aaBuilder[i].aa_ran2,  false)
        ui.set_visible(aaBuilder[i].aa_ran3,  false)

        ui.set_visible(aaBuilder[i].def_ran_1,  false)
        ui.set_visible(aaBuilder[i].label_anti, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)

        ui.set_visible(aaBuilder[i].aa_brute_en, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled)
        --ui.set_visible(aaBuilder[i].aa_brute_mode, vars.activeState == i and ui.get(aaBuilder[i].aa_brute_en) and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].aa_brute_mode, false)

        ui.set_visible(aaBuilder[i].aa_brute_time, vars.activeState == i and ui.get(aaBuilder[i].aa_brute_en) --[[and ui.get(aaBuilder[i].aa_brute_mode) ~= "Disabled" ]]and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].aa_brute_range, vars.activeState == i and ui.get(aaBuilder[i].aa_brute_en) --[[and ui.get(aaBuilder[i].aa_brute_mode) ~= "Disabled"]] and ui.get(aaBuilder[i].yaw) ~= "Off" and ui.get(aaBuilder[i].yaw_jitter) ~= 1 and ui.get(aaBuilder[i].yaw_jitter) ~= 5 and ui.get(aaBuilder[i].yaw_jitter) ~= 6 and isBuilderTab and stateEnabled and isEnabled)
        --ui.set_visible(aaBuilder[i].aa_brute_b_yaw, vars.activeState == i and  ui.get(aaBuilder[i].aa_brute_en) and ui.get(aaBuilder[i].aa_brute_mode) ~= "Disabled" and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].aa_brute_dl_tick, vars.activeState == i and ui.get(aaBuilder[i].body_yaw) == " Jitter" and ui.get(aaBuilder[i].aa_brute_en) --[[and ui.get(aaBuilder[i].aa_brute_mode) ~= "Disabled"]] and isBuilderTab and stateEnabled and isEnabled)
        ui.set_visible(aaBuilder[i].randomization_brute, vars.activeState == i and (ui.get(aaBuilder[i].yaw) == " Left & Right") and ui.get(aaBuilder[i].aa_brute_en)--[[ and ui.get(aaBuilder[i].aa_brute_mode) ~= "Disabled"]] and isBuilderTab and stateEnabled and isEnabled)

        ui.set_visible(aaBuilder[i].antibrute_enable, vars.activeState == i and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_aa, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_yaw, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and func.includes(ui.get(aaBuilder[i].antibrute_aa), "Yaw") and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_mod, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and func.includes(ui.get(aaBuilder[i].antibrute_aa), "Modifier") and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_mod_range, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and func.includes(ui.get(aaBuilder[i].antibrute_aa), "Modifier") and ui.get(aaBuilder[i].antibrute_mod) ~= "-" and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_body, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and func.includes(ui.get(aaBuilder[i].antibrute_aa), "Body yaw") and isBuilderTab and stateEnabled and isEnabled and false)
        ui.set_visible(aaBuilder[i].antibrute_body_range, vars.activeState == i and ui.get(aaBuilder[i].antibrute_enable) and func.includes(ui.get(aaBuilder[i].antibrute_aa), "Body yaw") and ui.get(aaBuilder[i].antibrute_body) ~= "-"and isBuilderTab and stateEnabled and isEnabled and false)
        
        
    end

    for i, feature in pairs(menu.aaTab) do
        ui.set_visible(feature, isAATab and isEnabled)
    end

    for i, feature in pairs(menu.custTab) do
        ui.set_visible(feature, isCUSTtab and isEnabled)
    end

    for i, feature in pairs(menu.builderTab) do
		ui.set_visible(feature, isBuilderTab and isEnabled)
	end

    for i, feature in pairs(menu.visualsTab) do
        if type(feature) ~= "table" then
            ui.set_visible(feature, isVisualsTab and isEnabled)
        end
	end
    
    for i, feature in pairs(menu.miscTab) do
        if type(feature) ~= "table" then
            ui.set_visible(feature, isMiscTab and isEnabled and anoflow.active_tab == 2)
        end
	end

    for i, feature in pairs(menu.rage_tab) do
        if type(feature) ~= "table" then
            ui.set_visible(feature, isMiscTab and isEnabled and anoflow.active_tab == 1)
        end
	end
    for i, feature in pairs(menu.rage_tab.ai_) do
        if type(feature) ~= "table" then
            ui.set_visible(feature, isMiscTab and isEnabled and anoflow.active_tab == 1)
        end
	end

    ui.set_visible(menu.visualsTab.fu8ayafsyu8n, isCUSTtab)

    ui.set_visible(menu.miscTab.clan_w, _WMENTOL and isMiscTab)
    ui.set_visible(menu.miscTab.clan_a, _ALKASH and isMiscTab)
    ui.set_visible(menu.miscTab.inf_ammo, (_ALKASH or _WMENTOL) and isMiscTab)

    -- ui.set_enabled(menu.visualsTab.weapon_scope, false)
    -- ui.set(menu.visualsTab.weapon_scope, false)
    ui.set_enabled(menu.configTab.default, false)
    ui.set_visible(menu.miscTab.clantag_mode, ui.get(menu.miscTab.clanTag) and (isMiscTab and isEnabled) and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.console_logs_custom_vibor, ui.get(menu.miscTab.console_logs) and (isMiscTab and isEnabled) and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.console_logs_resolver, ui.get(menu.miscTab.console_logs) and ui.get(menu.miscTab.console_logs_custom_vibor) and (isMiscTab and isEnabled) and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.console_logs_custom, ui.get(menu.miscTab.console_logs) and ui.get(menu.miscTab.console_logs_custom_vibor) and ui.get(menu.miscTab.console_logs_resolver) == "custom" and (isMiscTab and isEnabled) and anoflow.active_tab == 2)
    ui.set_visible(menu.visualsTab.wtm_style, ui.get(menu.visualsTab.wtm_enable) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.cros_y, ui.get(menu.visualsTab.cros_ind) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.min_ind_mode, ui.get(menu.visualsTab.min_ind) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.min_text, ui.get(menu.visualsTab.min_ind) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.asp_v, ui.get(menu.visualsTab.asp) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.third_dis, ui.get(menu.visualsTab.third_) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.fps_on, ui.get(menu.visualsTab.fpsboost) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.fps_x, ui.get(menu.visualsTab.fpsboost) and func.includes(ui.get(menu.visualsTab.fps_on), "Fps < X") and (isVisualsTab and isEnabled))
    ui.set_visible(menu.visualsTab.on_screen_v, ui.get(menu.visualsTab.on_screen_logs) and (isVisualsTab and isEnabled))
    ui.set_visible(menu.rage_tab.auto_tp_indicator_disable, ui.get(menu.rage_tab.auto_tp) and isMiscTab and anoflow.active_tab == 1)
    -- ui.set_enabled(menu.rage_tab.auto_tp, false)
    ui.set_visible(menu.rage_tab.rs_mode, ui.get(menu.rage_tab.resolver) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.rs_add, ui.get(menu.rage_tab.resolver) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.rs_debug, ui.get(menu.rage_tab.resolver) and ui.get(menu.rage_tab.rs_mode) == "Random brute" and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.aaTab.m_left_yaw, ui.get(menu.aaTab.cst_mn_yaw) and isAATab)
    ui.set_visible(menu.aaTab.m_right_yaw, ui.get(menu.aaTab.cst_mn_yaw) and isAATab)
    ui.set_visible(menu.aaTab.avoid_dist, ui.get(menu.aaTab.anti_knife) and isAATab)
    ui.set_visible(menu.aaTab.spin_speed, ui.get(menu.aaTab.spin_exploit) and isAATab)
    ui.set_visible(menu.aaTab.safe_flick, isAATab and (func.includes(ui.get(menu.aaTab.safe_head), "Air Knife hold") or func.includes(ui.get(menu.aaTab.safe_head), "Air Zeus hold")))
    ui.set_visible(menu.aaTab.safe_flick_mode, isAATab and (ui.get(menu.aaTab.safe_flick) and (func.includes(ui.get(menu.aaTab.safe_head), "Air Knife hold") or func.includes(ui.get(menu.aaTab.safe_head), "Air Zeus hold"))))
    ui.set_visible(menu.aaTab.safe_flick_pitch, isAATab and (ui.get(menu.aaTab.safe_flick) and ui.get(menu.aaTab.safe_flick_mode) == "E spam" and (func.includes(ui.get(menu.aaTab.safe_head), "Knife") or func.includes(ui.get(menu.aaTab.safe_head), "Air Zeus hold"))))
    ui.set_visible(menu.aaTab.safe_flick_pitch_value, isAATab and (ui.get(menu.aaTab.safe_flick) and ui.get(menu.aaTab.safe_flick_mode) == "E spam" and (ui.get(menu.aaTab.safe_flick_pitch) == "Custom") and (func.includes(ui.get(menu.aaTab.safe_head), "Knife") or func.includes(ui.get(menu.aaTab.safe_head), "Air Zeus hold"))))
    ui.set_visible(menu.aaTab.fl_mode, ui.get(menu.aaTab.fl_custom) and isAATab)
    ui.set_visible(menu.miscTab.ai_peek_key, false)
    ui.set_visible(menu.rage_tab.charge_wpn, ui.get(menu.rage_tab.charge_dt) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.charge_bit, ui.get(menu.rage_tab.charge_dt) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.miscTab.ai_peek_info, ui.get(menu.miscTab.ai_peek) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.ai_peek_info_2, ui.get(menu.miscTab.ai_peek) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.drop_multi, ui.get(menu.miscTab.drop_gr) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.drop_key, ui.get(menu.miscTab.drop_gr) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.rage_tab.air_trigger, ui.get(menu.rage_tab.air_stop) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.air_stop_k, ui.get(menu.rage_tab.air_stop) and ui.get(menu.rage_tab.air_trigger) == "On hotkey" and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.air_target, ui.get(menu.rage_tab.air_stop) and ui.get(menu.rage_tab.air_trigger) == "Target priority" and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.air_distance, ui.get(menu.rage_tab.air_stop) and ui.get(menu.rage_tab.air_trigger) == "Target priority" and ui.get(menu.rage_tab.air_target) == "Target is closely" and isMiscTab and anoflow.active_tab == 1)

    ui.set_visible(menu.miscTab.auto_w, ui.get(menu.miscTab.auto_buy) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.auto_p, ui.get(menu.miscTab.auto_buy) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.auto_g, ui.get(menu.miscTab.auto_buy) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.miscTab.auto_add, ui.get(menu.miscTab.auto_buy) and isMiscTab and anoflow.active_tab == 2)
    ui.set_visible(menu.visualsTab.v_ch, ui.get(menu.visualsTab.viewmodel_en) and isVisualsTab)
    -- ui.set_visible(menu.visualsTab.viewmodel_fov, ui.get(menu.visualsTab.viewmodel_en) and isVisualsTab)
    -- ui.set_visible(menu.visualsTab.viewmodel_x, ui.get(menu.visualsTab.viewmodel_en) and isVisualsTab)
    -- ui.set_visible(menu.visualsTab.viewmodel_y, ui.get(menu.visualsTab.viewmodel_en) and isVisualsTab)
    -- ui.set_visible(menu.visualsTab.viewmodel_z, ui.get(menu.visualsTab.viewmodel_en) and isVisualsTab)
    ui.set_visible(menu.visualsTab.arows_txt_color, ui.get(menu.visualsTab.arows_txt) and isVisualsTab)
    ui.set_visible(menu.visualsTab.arows_txt_offset, ui.get(menu.visualsTab.arows_txt) and isVisualsTab)
    ui.set_visible(menu.visualsTab.arows_txt_up_or_daun, ui.get(menu.visualsTab.arows_txt) and isVisualsTab)
    ui.set_visible(menu.visualsTab.arows_txt_up_or_daun_offset, ui.get(menu.visualsTab.arows_txt) and ui.get(menu.visualsTab.arows_txt_up_or_daun) ~= "-" and isVisualsTab)

    for i, feature in pairs(menu.visualsTab.default) do
        ui.set_visible(feature, isVisualsTab and ui.get(menu.visualsTab.v_ch) == "Default" and ui.get(menu.visualsTab.viewmodel_en) and isEnabled)
    end

    for i, feature in pairs(menu.visualsTab.scoped) do
        ui.set_visible(feature, isVisualsTab and ui.get(menu.visualsTab.v_ch) == "In scope" and ui.get(menu.visualsTab.viewmodel_en) and isEnabled)
    end

    ui.set_visible(menu.visualsTab.custom_color, ui.get(menu.visualsTab.custom_scope) and isVisualsTab)
    ui.set_visible(menu.visualsTab.custom_initial_pos, ui.get(menu.visualsTab.custom_scope) and isVisualsTab)
    ui.set_visible(menu.visualsTab.custom_offset, ui.get(menu.visualsTab.custom_scope) and isVisualsTab)

    ui.set_enabled(menu.rage_tab.zeus_fix, false)
    ui.set_enabled(menu.rage_tab.spread_fix, false)
    ui.set_enabled(menu.visualsTab.spec_list, false)
    ui.set_enabled(menu.visualsTab.penis, false)


    ui.set_visible(menu.visualsTab.gitler_color, ui.get(menu.visualsTab.gitler) and isVisualsTab)
    ui.set_visible(menu.visualsTab.gitler_speed, ui.get(menu.visualsTab.gitler) and isVisualsTab)
    ui.set_visible(menu.visualsTab.gitler_size, ui.get(menu.visualsTab.gitler) and isVisualsTab)


    ui.set_visible(menu.rage_tab.aim_tab, ui.get(menu.rage_tab.aim_tools_enable) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_baim_mode, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 1 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_baim_trigers, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 1 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_baim_hp, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 1 and func.includes(ui.get(menu.rage_tab.aim_tools_baim_trigers), "Enemy HP < X") and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_safe_trigers, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 1 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_safe_hp, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 1 and func.includes(ui.get(menu.rage_tab.aim_tools_safe_trigers), "Enemy HP < X") and isMiscTab and anoflow.active_tab == 1)

    ui.set_visible(menu.rage_tab.aim_tools_hitchance_warning, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 2 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_hitchance, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 2 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_hc_land, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 2 and ui.get(menu.rage_tab.aim_tools_hitchance) and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_hc_air, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 2 and ui.get(menu.rage_tab.aim_tools_hitchance) and isMiscTab)

    ui.set_enabled(menu.rage_tab.aim_tools_silent, false)
    ui.set_visible(menu.rage_tab.aim_tools_silent, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 3 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_silent_out, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 3 and ui.get(menu.rage_tab.aim_tools_silent) and isMiscTab and anoflow.active_tab == 1)

    ui.set_visible(menu.rage_tab.aim_tools_delay_shot, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tab) == 4 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_delay_states, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tools_delay_shot) and ui.get(menu.rage_tab.aim_tab) == 4 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_delay_land, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tools_delay_shot) and ui.get(menu.rage_tab.aim_tab) == 4 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_delay_hp, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tools_delay_shot) and ui.get(menu.rage_tab.aim_tab) == 4 and isMiscTab and anoflow.active_tab == 1)
    ui.set_visible(menu.rage_tab.aim_tools_delay_ind, ui.get(menu.rage_tab.aim_tools_enable) and ui.get(menu.rage_tab.aim_tools_delay_shot) and ui.get(menu.rage_tab.aim_tab) == 4 and isMiscTab and anoflow.active_tab == 1)

    --ui.set(lableb321, text_fade_animation(3, menu_r,menu_g,menu_b, 255, "anoflow ~ " .. script_build))

    for i, feature in pairs(menu.configTab) do
		ui.set_visible(feature, isINFOTab and isEnabled)
        ui.set_visible(menu.configTab.name, false)
	end

    for i, feature in pairs(menu.infoTab) do
        ui.set_visible(feature, isINFOTab and isEnabled)
    end

    for i, feature in pairs(menu.extras) do
        ui.set_visible(feature, false)
    end

    if not isEnabled and not saved then
        func.resetAATab()
        ui.set(refs.fsBodyYaw, isEnabled)
        ui.set(refs.enabled, isEnabled)
        saved = true
    elseif isEnabled and saved then
        ui.set(refs.fsBodyYaw, not isEnabled)
        ui.set(refs.enabled, isEnabled)
        saved = false
    end
    func.setAATab(not isEnabled)
end)

anoflow.config_data = {}
anoflow.config_data.cfg_data = {
    anti_aim = {
        -- 1
        aaBuilder[1].enableState;
        aaBuilder[1].stateDisablers;
        aaBuilder[1].yaw;
        aaBuilder[1].yawLeft;
        aaBuilder[1].yawRight;
        aaBuilder[1].yaw_jitter;
        aaBuilder[1].wayFirst;
        aaBuilder[1].waySecond;
        aaBuilder[1].wayThird;
        aaBuilder[1].yawJitterStatic;
        aaBuilder[1].sway_speed;
        aaBuilder[1].body_yaw;
        aaBuilder[1].desync;
        aaBuilder[1].delayed_body;
        aaBuilder[1].random_delay;
        aaBuilder[1].randomization;
        aaBuilder[1].force_defensive;
        aaBuilder[1].defensive_delay;
        aaBuilder[1].defensiveAntiAim;
        aaBuilder[1].def_pitch;
        aaBuilder[1].def_pitchSlider;
        aaBuilder[1].def_pitch_s1;
        aaBuilder[1].def_pitch_s2;
        aaBuilder[1].def_slow_gen;
        aaBuilder[1].def_dyn_speed;
        aaBuilder[1].def_jit_delay;
        aaBuilder[1].def_3_1;
        aaBuilder[1].def_3_2;
        aaBuilder[1].def_3_3;
        aaBuilder[1].def_yawMode;
        aaBuilder[1].def_yawStatic;
        aaBuilder[1].def_yaw_spin_range;
        aaBuilder[1].def_yaw_spin_speed;
        aaBuilder[1].def_yaw_left;
        aaBuilder[1].def_yaw_right;
        aaBuilder[1].def_yaw_switch_delay;
        aaBuilder[1].def_yaw_exploit_speed;
        aaBuilder[1].def_slow_gena;
        aaBuilder[1].def_way_1;
        aaBuilder[1].def_way_2;
        aaBuilder[1].def_way_3;
        aaBuilder[1].bidy;
        aaBuilder[1].label_anti;
        aaBuilder[1].aa_brute_en;
        aaBuilder[1].aa_brute_mode;
        aaBuilder[1].aa_brute_range;
        aaBuilder[1].aa_brute_dl_tick;
        aaBuilder[1].randomization_brute;


        aaBuilder[1].j_1;
        aaBuilder[1].j_2;
        aaBuilder[1].j_3;
        aaBuilder[1].j_4;
        aaBuilder[1].j_5;
        aaBuilder[1].j_6;
        aaBuilder[1].j_7;

        -- 2
        aaBuilder[2].enableState;
        aaBuilder[2].stateDisablers;
        aaBuilder[2].yaw;
        aaBuilder[2].yawLeft;
        aaBuilder[2].yawRight;
        aaBuilder[2].yaw_jitter;
        aaBuilder[2].wayFirst;
        aaBuilder[2].waySecond;
        aaBuilder[2].wayThird;
        aaBuilder[2].yawJitterStatic;
        aaBuilder[2].sway_speed;
        aaBuilder[2].body_yaw;
        aaBuilder[2].desync;
        aaBuilder[2].delayed_body;
        aaBuilder[2].random_delay;
        aaBuilder[2].randomization;
        aaBuilder[2].force_defensive;
        aaBuilder[2].defensive_delay;
        aaBuilder[2].defensiveAntiAim;
        aaBuilder[2].def_pitch;
        aaBuilder[2].def_pitchSlider;
        aaBuilder[2].def_pitch_s1;
        aaBuilder[2].def_pitch_s2;
        aaBuilder[2].def_slow_gen;
        aaBuilder[2].def_dyn_speed;
        aaBuilder[2].def_jit_delay;
        aaBuilder[2].def_3_1;
        aaBuilder[2].def_3_2;
        aaBuilder[2].def_3_3;
        aaBuilder[2].def_yawMode;
        aaBuilder[2].def_yawStatic;
        aaBuilder[2].def_yaw_spin_range;
        aaBuilder[2].def_yaw_spin_speed;
        aaBuilder[2].def_yaw_left;
        aaBuilder[2].def_yaw_right;
        aaBuilder[2].def_yaw_switch_delay;
        aaBuilder[2].def_yaw_exploit_speed;
        aaBuilder[2].def_slow_gena;
        aaBuilder[2].def_way_1;
        aaBuilder[2].def_way_2;
        aaBuilder[2].def_way_3;
        aaBuilder[2].bidy;
        aaBuilder[2].label_anti;
        aaBuilder[2].aa_brute_en;
        aaBuilder[2].aa_brute_mode;
        aaBuilder[2].aa_brute_range;
        aaBuilder[2].aa_brute_dl_tick;
        aaBuilder[2].randomization_brute;



        aaBuilder[2].j_1;
        aaBuilder[2].j_2;
        aaBuilder[2].j_3;
        aaBuilder[2].j_4;
        aaBuilder[2].j_5;
        aaBuilder[2].j_6;
        aaBuilder[2].j_7;

        --3
        aaBuilder[3].enableState;
        aaBuilder[3].stateDisablers;
        aaBuilder[3].yaw;
        aaBuilder[3].yawLeft;
        aaBuilder[3].yawRight;
        aaBuilder[3].yaw_jitter;
        aaBuilder[3].wayFirst;
        aaBuilder[3].waySecond;
        aaBuilder[3].wayThird;
        aaBuilder[3].yawJitterStatic;
        aaBuilder[3].sway_speed;
        aaBuilder[3].body_yaw;
        aaBuilder[3].desync;
        aaBuilder[3].delayed_body;
        aaBuilder[3].random_delay;
        aaBuilder[3].randomization;
        aaBuilder[3].force_defensive;
        aaBuilder[3].defensive_delay;
        aaBuilder[3].defensiveAntiAim;
        aaBuilder[3].def_pitch;
        aaBuilder[3].def_pitchSlider;
        aaBuilder[3].def_pitch_s1;
        aaBuilder[3].def_pitch_s2;
        aaBuilder[3].def_slow_gen;
        aaBuilder[3].def_dyn_speed;
        aaBuilder[3].def_jit_delay;
        aaBuilder[3].def_3_1;
        aaBuilder[3].def_3_2;
        aaBuilder[3].def_3_3;
        aaBuilder[3].def_yawMode;
        aaBuilder[3].def_yawStatic;
        aaBuilder[3].def_yaw_spin_range;
        aaBuilder[3].def_yaw_spin_speed;
        aaBuilder[3].def_yaw_left;
        aaBuilder[3].def_yaw_right;
        aaBuilder[3].def_yaw_switch_delay;
        aaBuilder[3].def_yaw_exploit_speed;
        aaBuilder[3].def_slow_gena;
        aaBuilder[3].def_way_1;
        aaBuilder[3].def_way_2;
        aaBuilder[3].def_way_3;
        aaBuilder[3].bidy;
        aaBuilder[3].label_anti;
        aaBuilder[3].aa_brute_en;
        aaBuilder[3].aa_brute_mode;
        aaBuilder[3].aa_brute_range;
        aaBuilder[3].aa_brute_dl_tick;
        aaBuilder[3].randomization_brute;



        aaBuilder[3].j_1;
        aaBuilder[3].j_2;
        aaBuilder[3].j_3;
        aaBuilder[3].j_4;
        aaBuilder[3].j_5;
        aaBuilder[3].j_6;
        aaBuilder[3].j_7;

        --4
        aaBuilder[4].enableState;
        aaBuilder[4].stateDisablers;
        aaBuilder[4].yaw;
        aaBuilder[4].yawLeft;
        aaBuilder[4].yawRight;
        aaBuilder[4].yaw_jitter;
        aaBuilder[4].wayFirst;
        aaBuilder[4].waySecond;
        aaBuilder[4].wayThird;
        aaBuilder[4].yawJitterStatic;
        aaBuilder[4].sway_speed;
        aaBuilder[4].body_yaw;
        aaBuilder[4].desync;
        aaBuilder[4].delayed_body;
        aaBuilder[4].random_delay;
        aaBuilder[4].randomization;
        aaBuilder[4].force_defensive;
        aaBuilder[4].defensive_delay;
        aaBuilder[4].defensiveAntiAim;
        aaBuilder[4].def_pitch;
        aaBuilder[4].def_pitchSlider;
        aaBuilder[4].def_pitch_s1;
        aaBuilder[4].def_pitch_s2;
        aaBuilder[4].def_slow_gen;
        aaBuilder[4].def_dyn_speed;
        aaBuilder[4].def_jit_delay;
        aaBuilder[4].def_3_1;
        aaBuilder[4].def_3_2;
        aaBuilder[4].def_3_3;
        aaBuilder[4].def_yawMode;
        aaBuilder[4].def_yawStatic;
        aaBuilder[4].def_yaw_spin_range;
        aaBuilder[4].def_yaw_spin_speed;
        aaBuilder[4].def_yaw_left;
        aaBuilder[4].def_yaw_right;
        aaBuilder[4].def_yaw_switch_delay;
        aaBuilder[4].def_yaw_exploit_speed;
        aaBuilder[4].def_slow_gena;
        aaBuilder[4].def_way_1;
        aaBuilder[4].def_way_2;
        aaBuilder[4].def_way_3;
        aaBuilder[4].bidy;
        aaBuilder[4].label_anti;
        aaBuilder[4].aa_brute_en;
        aaBuilder[4].aa_brute_mode;
        aaBuilder[4].aa_brute_range;
        aaBuilder[4].aa_brute_dl_tick;
        aaBuilder[4].randomization_brute;


        aaBuilder[4].j_1;
        aaBuilder[4].j_2;
        aaBuilder[4].j_3;
        aaBuilder[4].j_4;
        aaBuilder[4].j_5;
        aaBuilder[4].j_6;
        aaBuilder[4].j_7;

        --5
        aaBuilder[5].enableState;
        aaBuilder[5].stateDisablers;
        aaBuilder[5].yaw;
        aaBuilder[5].yawLeft;
        aaBuilder[5].yawRight;
        aaBuilder[5].yaw_jitter;
        aaBuilder[5].wayFirst;
        aaBuilder[5].waySecond;
        aaBuilder[5].wayThird;
        aaBuilder[5].yawJitterStatic;
        aaBuilder[5].sway_speed;
        aaBuilder[5].body_yaw;
        aaBuilder[5].desync;
        aaBuilder[5].delayed_body;
        aaBuilder[5].random_delay;
        aaBuilder[5].randomization;
        aaBuilder[5].force_defensive;
        aaBuilder[5].defensive_delay;
        aaBuilder[5].defensiveAntiAim;
        aaBuilder[5].def_pitch;
        aaBuilder[5].def_pitchSlider;
        aaBuilder[5].def_pitch_s1;
        aaBuilder[5].def_pitch_s2;
        aaBuilder[5].def_slow_gen;
        aaBuilder[5].def_dyn_speed;
        aaBuilder[5].def_jit_delay;
        aaBuilder[5].def_3_1;
        aaBuilder[5].def_3_2;
        aaBuilder[5].def_3_3;
        aaBuilder[5].def_yawMode;
        aaBuilder[5].def_yawStatic;
        aaBuilder[5].def_yaw_spin_range;
        aaBuilder[5].def_yaw_spin_speed;
        aaBuilder[5].def_yaw_left;
        aaBuilder[5].def_yaw_right;
        aaBuilder[5].def_yaw_switch_delay;
        aaBuilder[5].def_yaw_exploit_speed;
        aaBuilder[5].def_slow_gena;
        aaBuilder[5].def_way_1;
        aaBuilder[5].def_way_2;
        aaBuilder[5].def_way_3;
        aaBuilder[5].bidy;
        aaBuilder[5].label_anti;
        aaBuilder[5].aa_brute_en;
        aaBuilder[5].aa_brute_mode;
        aaBuilder[5].aa_brute_range;
        aaBuilder[5].aa_brute_dl_tick;
        aaBuilder[5].randomization_brute;



        aaBuilder[5].j_1;
        aaBuilder[5].j_2;
        aaBuilder[5].j_3;
        aaBuilder[5].j_4;
        aaBuilder[5].j_5;
        aaBuilder[5].j_6;
        aaBuilder[5].j_7;

        --6
        aaBuilder[6].enableState;
        aaBuilder[6].stateDisablers;
        aaBuilder[6].yaw;
        aaBuilder[6].yawLeft;
        aaBuilder[6].yawRight;
        aaBuilder[6].yaw_jitter;
        aaBuilder[6].wayFirst;
        aaBuilder[6].waySecond;
        aaBuilder[6].wayThird;
        aaBuilder[6].yawJitterStatic;
        aaBuilder[6].sway_speed;
        aaBuilder[6].body_yaw;
        aaBuilder[6].desync;
        aaBuilder[6].delayed_body;
        aaBuilder[6].random_delay;
        aaBuilder[6].randomization;
        aaBuilder[6].force_defensive;
        aaBuilder[6].defensive_delay;
        aaBuilder[6].defensiveAntiAim;
        aaBuilder[6].def_pitch;
        aaBuilder[6].def_pitchSlider;
        aaBuilder[6].def_pitch_s1;
        aaBuilder[6].def_pitch_s2;
        aaBuilder[6].def_slow_gen;
        aaBuilder[6].def_dyn_speed;
        aaBuilder[6].def_jit_delay;
        aaBuilder[6].def_3_1;
        aaBuilder[6].def_3_2;
        aaBuilder[6].def_3_3;
        aaBuilder[6].def_yawMode;
        aaBuilder[6].def_yawStatic;
        aaBuilder[6].def_yaw_spin_range;
        aaBuilder[6].def_yaw_spin_speed;
        aaBuilder[6].def_yaw_left;
        aaBuilder[6].def_yaw_right;
        aaBuilder[6].def_yaw_switch_delay;
        aaBuilder[6].def_yaw_exploit_speed;
        aaBuilder[6].def_slow_gena;
        aaBuilder[6].def_way_1;
        aaBuilder[6].def_way_2;
        aaBuilder[6].def_way_3;
        aaBuilder[6].bidy;
        aaBuilder[6].label_anti;
        aaBuilder[6].aa_brute_en;
        aaBuilder[6].aa_brute_mode;
        aaBuilder[6].aa_brute_range;
        aaBuilder[6].aa_brute_dl_tick;
        aaBuilder[6].randomization_brute;



        aaBuilder[6].j_1;
        aaBuilder[6].j_2;
        aaBuilder[6].j_3;
        aaBuilder[6].j_4;
        aaBuilder[6].j_5;
        aaBuilder[6].j_6;
        aaBuilder[6].j_7;

        --7
        aaBuilder[7].enableState;
        aaBuilder[7].stateDisablers;
        aaBuilder[7].yaw;
        aaBuilder[7].yawLeft;
        aaBuilder[7].yawRight;
        aaBuilder[7].yaw_jitter;
        aaBuilder[7].wayFirst;
        aaBuilder[7].waySecond;
        aaBuilder[7].wayThird;
        aaBuilder[7].yawJitterStatic;
        aaBuilder[7].sway_speed;
        aaBuilder[7].body_yaw;
        aaBuilder[7].desync;
        aaBuilder[7].delayed_body;
        aaBuilder[7].random_delay;
        aaBuilder[7].randomization;
        aaBuilder[7].force_defensive;
        aaBuilder[7].defensive_delay;
        aaBuilder[7].defensiveAntiAim;
        aaBuilder[7].def_pitch;
        aaBuilder[7].def_pitchSlider;
        aaBuilder[7].def_pitch_s1;
        aaBuilder[7].def_pitch_s2;
        aaBuilder[7].def_slow_gen;
        aaBuilder[7].def_dyn_speed;
        aaBuilder[7].def_jit_delay;
        aaBuilder[7].def_3_1;
        aaBuilder[7].def_3_2;
        aaBuilder[7].def_3_3;
        aaBuilder[7].def_yawMode;
        aaBuilder[7].def_yawStatic;
        aaBuilder[7].def_yaw_spin_range;
        aaBuilder[7].def_yaw_spin_speed;
        aaBuilder[7].def_yaw_left;
        aaBuilder[7].def_yaw_right;
        aaBuilder[7].def_yaw_switch_delay;
        aaBuilder[7].def_yaw_exploit_speed;
        aaBuilder[7].def_slow_gena;
        aaBuilder[7].def_way_1;
        aaBuilder[7].def_way_2;
        aaBuilder[7].def_way_3;
        aaBuilder[7].bidy;
        aaBuilder[7].label_anti;
        aaBuilder[7].aa_brute_en;
        aaBuilder[7].aa_brute_mode;
        aaBuilder[7].aa_brute_range;
        aaBuilder[7].aa_brute_dl_tick;
        aaBuilder[7].randomization_brute;



        aaBuilder[7].j_1;
        aaBuilder[7].j_2;
        aaBuilder[7].j_3;
        aaBuilder[7].j_4;
        aaBuilder[7].j_5;
        aaBuilder[7].j_6;
        aaBuilder[7].j_7;

        --8
        aaBuilder[8].enableState;
        aaBuilder[8].stateDisablers;
        aaBuilder[8].yaw;
        aaBuilder[8].yawLeft;
        aaBuilder[8].yawRight;
        aaBuilder[8].yaw_jitter;
        aaBuilder[8].wayFirst;
        aaBuilder[8].waySecond;
        aaBuilder[8].wayThird;
        aaBuilder[8].yawJitterStatic;
        aaBuilder[8].sway_speed;
        aaBuilder[8].body_yaw;
        aaBuilder[8].desync;
        aaBuilder[8].delayed_body;
        aaBuilder[8].random_delay;
        aaBuilder[8].randomization;
        aaBuilder[8].force_defensive;
        aaBuilder[8].defensive_delay;
        aaBuilder[8].defensiveAntiAim;
        aaBuilder[8].def_pitch;
        aaBuilder[8].def_pitchSlider;
        aaBuilder[8].def_pitch_s1;
        aaBuilder[8].def_pitch_s2;
        aaBuilder[8].def_slow_gen;
        aaBuilder[8].def_dyn_speed;
        aaBuilder[8].def_jit_delay;
        aaBuilder[8].def_3_1;
        aaBuilder[8].def_3_2;
        aaBuilder[8].def_3_3;
        aaBuilder[8].def_yawMode;
        aaBuilder[8].def_yawStatic;
        aaBuilder[8].def_yaw_spin_range;
        aaBuilder[8].def_yaw_spin_speed;
        aaBuilder[8].def_yaw_left;
        aaBuilder[8].def_yaw_right;
        aaBuilder[8].def_yaw_switch_delay;
        aaBuilder[8].def_yaw_exploit_speed;
        aaBuilder[8].def_slow_gena;
        aaBuilder[8].def_way_1;
        aaBuilder[8].def_way_2;
        aaBuilder[8].def_way_3;
        aaBuilder[8].bidy;
        aaBuilder[8].label_anti;
        aaBuilder[8].aa_brute_en;
        aaBuilder[8].aa_brute_mode;
        aaBuilder[8].aa_brute_range;
        aaBuilder[8].aa_brute_dl_tick;
        aaBuilder[8].randomization_brute;



        aaBuilder[8].j_1;
        aaBuilder[8].j_2;
        aaBuilder[8].j_3;
        aaBuilder[8].j_4;
        aaBuilder[8].j_5;
        aaBuilder[8].j_6;
        aaBuilder[8].j_7;

        --9
        aaBuilder[9].enableState;
        aaBuilder[9].stateDisablers;
        aaBuilder[9].yaw;
        aaBuilder[9].yawLeft;
        aaBuilder[9].yawRight;
        aaBuilder[9].yaw_jitter;
        aaBuilder[9].wayFirst;
        aaBuilder[9].waySecond;
        aaBuilder[9].wayThird;
        aaBuilder[9].yawJitterStatic;
        aaBuilder[9].sway_speed;
        aaBuilder[9].body_yaw;
        aaBuilder[9].desync;
        aaBuilder[9].delayed_body;
        aaBuilder[9].random_delay;
        aaBuilder[9].randomization;
        aaBuilder[9].force_defensive;
        aaBuilder[9].defensive_delay;
        aaBuilder[9].defensiveAntiAim;
        aaBuilder[9].def_pitch;
        aaBuilder[9].def_pitchSlider;
        aaBuilder[9].def_pitch_s1;
        aaBuilder[9].def_pitch_s2;
        aaBuilder[9].def_slow_gen;
        aaBuilder[9].def_dyn_speed;
        aaBuilder[9].def_jit_delay;
        aaBuilder[9].def_3_1;
        aaBuilder[9].def_3_2;
        aaBuilder[9].def_3_3;
        aaBuilder[9].def_yawMode;
        aaBuilder[9].def_yawStatic;
        aaBuilder[9].def_yaw_spin_range;
        aaBuilder[9].def_yaw_spin_speed;
        aaBuilder[9].def_yaw_left;
        aaBuilder[9].def_yaw_right;
        aaBuilder[9].def_yaw_switch_delay;
        aaBuilder[9].def_yaw_exploit_speed;
        aaBuilder[9].def_slow_gena;
        aaBuilder[9].def_way_1;
        aaBuilder[9].def_way_2;
        aaBuilder[9].def_way_3;
        aaBuilder[9].bidy;
        aaBuilder[9].label_anti;
        aaBuilder[9].aa_brute_en;
        aaBuilder[9].aa_brute_mode;
        aaBuilder[9].aa_brute_range;
        aaBuilder[9].aa_brute_dl_tick;
        aaBuilder[9].randomization_brute;


        aaBuilder[9].j_1;
        aaBuilder[9].j_2;
        aaBuilder[9].j_3;
        aaBuilder[9].j_4;
        aaBuilder[9].j_5;
        aaBuilder[9].j_6;
        aaBuilder[9].j_7;

        --10
        aaBuilder[10].enableState;
        aaBuilder[10].stateDisablers;
        aaBuilder[10].yaw;
        aaBuilder[10].yawLeft;
        aaBuilder[10].yawRight;
        aaBuilder[10].yaw_jitter;
        aaBuilder[10].wayFirst;
        aaBuilder[10].waySecond;
        aaBuilder[10].wayThird;
        aaBuilder[10].yawJitterStatic;
        aaBuilder[10].sway_speed;
        aaBuilder[10].body_yaw;
        aaBuilder[10].desync;
        aaBuilder[10].delayed_body;
        aaBuilder[10].random_delay;
        aaBuilder[10].randomization;
        aaBuilder[10].force_defensive;
        aaBuilder[10].defensive_delay;
        aaBuilder[10].defensiveAntiAim;
        aaBuilder[10].def_pitch;
        aaBuilder[10].def_pitchSlider;
        aaBuilder[10].def_pitch_s1;
        aaBuilder[10].def_pitch_s2;
        aaBuilder[10].def_slow_gen;
        aaBuilder[10].def_dyn_speed;
        aaBuilder[10].def_jit_delay;
        aaBuilder[10].def_3_1;
        aaBuilder[10].def_3_2;
        aaBuilder[10].def_3_3;
        aaBuilder[10].def_yawMode;
        aaBuilder[10].def_yawStatic;
        aaBuilder[10].def_yaw_spin_range;
        aaBuilder[10].def_yaw_spin_speed;
        aaBuilder[10].def_yaw_left;
        aaBuilder[10].def_yaw_right;
        aaBuilder[10].def_yaw_switch_delay;
        aaBuilder[10].def_yaw_exploit_speed;
        aaBuilder[10].def_slow_gena;
        aaBuilder[10].def_way_1;
        aaBuilder[10].def_way_2;
        aaBuilder[10].def_way_3;
        aaBuilder[10].bidy;
        aaBuilder[10].label_anti;
        aaBuilder[10].aa_brute_en;
        aaBuilder[10].aa_brute_mode;
        aaBuilder[10].aa_brute_range;
        aaBuilder[10].aa_brute_dl_tick;
        aaBuilder[10].randomization_brute;



        aaBuilder[10].j_1;
        aaBuilder[10].j_2;
        aaBuilder[10].j_3;
        aaBuilder[10].j_4;
        aaBuilder[10].j_5;
        aaBuilder[10].j_6;
        aaBuilder[10].j_7;

        --11
        aaBuilder[11].enableState;
        aaBuilder[11].stateDisablers;
        aaBuilder[11].yaw;
        aaBuilder[11].yawLeft;
        aaBuilder[11].yawRight;
        aaBuilder[11].yaw_jitter;
        aaBuilder[11].wayFirst;
        aaBuilder[11].waySecond;
        aaBuilder[11].wayThird;
        aaBuilder[11].yawJitterStatic;
        aaBuilder[11].sway_speed;
        aaBuilder[11].body_yaw;
        aaBuilder[11].desync;
        aaBuilder[11].delayed_body;
        aaBuilder[11].random_delay;
        aaBuilder[11].randomization;
        aaBuilder[11].force_defensive;
        aaBuilder[11].defensive_delay;
        aaBuilder[11].defensiveAntiAim;
        aaBuilder[11].def_pitch;
        aaBuilder[11].def_pitchSlider;
        aaBuilder[11].def_pitch_s1;
        aaBuilder[11].def_pitch_s2;
        aaBuilder[11].def_slow_gen;
        aaBuilder[11].def_dyn_speed;
        aaBuilder[11].def_jit_delay;
        aaBuilder[11].def_3_1;
        aaBuilder[11].def_3_2;
        aaBuilder[11].def_3_3;
        aaBuilder[11].def_yawMode;
        aaBuilder[11].def_yawStatic;
        aaBuilder[11].def_yaw_spin_range;
        aaBuilder[11].def_yaw_spin_speed;
        aaBuilder[11].def_yaw_left;
        aaBuilder[11].def_yaw_right;
        aaBuilder[11].def_yaw_switch_delay;
        aaBuilder[11].def_yaw_exploit_speed;
        aaBuilder[11].def_slow_gena;
        aaBuilder[11].def_way_1;
        aaBuilder[11].def_way_2;
        aaBuilder[11].def_way_3;
        aaBuilder[11].bidy;
        aaBuilder[11].label_anti;
        aaBuilder[11].aa_brute_en;
        aaBuilder[11].aa_brute_mode;
        aaBuilder[11].aa_brute_range;
        aaBuilder[11].aa_brute_dl_tick;
        aaBuilder[11].randomization_brute;



        aaBuilder[11].j_1;
        aaBuilder[11].j_2;
        aaBuilder[11].j_3;
        aaBuilder[11].j_4;
        aaBuilder[11].j_5;
        aaBuilder[11].j_6;
        aaBuilder[11].j_7;

    },
    aa_other = {
        menu.aaTab.spin_exploit;
        menu.aaTab.anti_knife;
        menu.aaTab.avoid_dist;
        menu.aaTab.freestandHotkey;
        menu.aaTab.legitAAHotkey;
        menu.aaTab.m_left;
        menu.aaTab.m_right;
        menu.aaTab.static_m;
        menu.aaTab.edge_on_fd;
        menu.aaTab.safe_head;
        menu.aaTab.safe_flick;
        menu.aaTab.safe_flick_mode;
        menu.aaTab.safe_flick_pitch;
        menu.aaTab.safe_flick_pitch_value
    },
    visuals = {
        menu.visualsTab.cros_ind;
        menu.visualsTab.wtm_enable;
        menu.visualsTab.wtm_style;
        menu.visualsTab.min_ind;
        menu.visualsTab.min_ind_mode;
        menu.visualsTab.fpsboost;
        menu.visualsTab.viewmodel_en;
        menu.visualsTab.default.viewmodel_fov;
        menu.visualsTab.default.viewmodel_x;
        menu.visualsTab.default.viewmodel_y;
        menu.visualsTab.default.viewmodel_z;

        menu.visualsTab.scoped.viewmodel_fov;
        menu.visualsTab.scoped.viewmodel_x;
        menu.visualsTab.scoped.viewmodel_y;
        menu.visualsTab.scoped.viewmodel_z;


        menu.visualsTab.custom_scope;
        menu.visualsTab.custom_color;
        menu.visualsTab.custom_initial_pos;
        menu.visualsTab.custom_offset;
        menu.visualsTab.weapon_scope;

        menu.visualsTab.zeus_warning;
        menu.visualsTab.third_;
        menu.visualsTab.third_dis;
        menu.visualsTab.min_text;
        menu.visualsTab.asp;
        menu.visualsTab.asp_v;
        menu.visualsTab.debug_panel;
        menu.visualsTab.arows_txt;
        menu.visualsTab.arows_txt_color;
        menu.visualsTab.arows_txt_offset;
        menu.visualsTab.arows_txt_up_or_daun;
        menu.visualsTab.arows_txt_up_or_daun_offset;

        menu.visualsTab.on_screen_logs;
        menu.visualsTab.on_screen_v;
        menu.visualsTab.a_pitch;
        menu.visualsTab.a_body;
        menu.visualsTab.a_legacy;
        menu.visualsTab.ap_move;
        menu.visualsTab.ap_air;

        menu.visualsTab.scoped.viewmodel_fov,
        menu.visualsTab.scoped.viewmodel_x,
        menu.visualsTab.scoped.viewmodel_y,
        menu.visualsTab.scoped.viewmodel_z,
    
        menu.visualsTab.default.viewmodel_fov,
        menu.visualsTab.default.viewmodel_x,
        menu.visualsTab.default.viewmodel_y,
        menu.visualsTab.default.viewmodel_z,
    },
    misc = {
        menu.rage_tab.auto_tp;
        menu.rage_tab.auto_tpHotkey;
        menu.rage_tab.auto_tp_indicator_disable;
        menu.rage_tab.resolver;
        menu.rage_tab.rs_mode;
        menu.miscTab.fast_ladder;
        menu.rage_tab.jump_scout;
        menu.rage_tab.charge_dt;
        menu.miscTab.ai_peek;
        menu.miscTab.ai_peek_key;
        menu.rage_tab.air_stop;
        menu.rage_tab.air_stop_k;
        menu.rage_tab.air_trigger,
        menu.rage_tab.air_target,
        menu.rage_tab.air_distance,
    
        menu.rage_tab.aim_tools_enable;
        menu.rage_tab.aim_tools_baim_mode;
        menu.rage_tab.aim_tools_baim_trigers;
        menu.rage_tab.aim_tools_baim_hp;
        menu.rage_tab.aim_tools_safe_trigers;
        menu.rage_tab.aim_tools_safe_hp;
        menu.miscTab.filtercons;
        menu.miscTab.clanTag;
        menu.miscTab.clantag_mode;
        menu.miscTab.kill_say;
        menu.miscTab.console_logs;
        menu.miscTab.console_logs_custom_vibor;
        menu.miscTab.console_logs_resolver;
        menu.miscTab.console_logs_custom;
        menu.miscTab.drop_gr;
        menu.miscTab.drop_key;
        menu.miscTab.drop_multi;
        menu.miscTab.bomb_fix;
    }
}


--#region configs

ui.set_callback(menu.configTab.export, function ()
    local Code = {{}, {}, {}, {}}; 

    for _, main in pairs(anoflow.config_data.cfg_data.anti_aim) do
        if ui.get(main) ~= nil then
            table.insert(Code[1], tostring(ui.get(main)))
        end
    end

    for _, main in pairs(anoflow.config_data.cfg_data.aa_other) do
        if ui.get(main) ~= nil then
            table.insert(Code[2], tostring(ui.get(main)))
        end
    end

    for _, main in pairs(anoflow.config_data.cfg_data.visuals) do
        if ui.get(main) ~= nil then
            table.insert(Code[3], tostring(ui.get(main)))
        end
    end

    for _, main in pairs(anoflow.config_data.cfg_data.misc) do
        if ui.get(main) ~= nil then
            table.insert(Code[4], tostring(ui.get(main)))
        end
    end

    clipboard.set(base64.encode(json.stringify(Code)))
end);


function getConfig(name)
    local database = database.read(lua.database.configs) or {}

    
    for i, v in pairs(database) do
        if v.name == name then
            return {
                config = v.config,
                index = i
            }
        end
    end

    
    for i, v in pairs(presets) do
        if v.name == name then
            return {
                config = v.config,
                index = i
            }
        end
    end

    return nil
end
function saveConfig(menu, name)
    local db = database.read(lua.database.configs) or {}
    local config = {}

    
    if name:match("[^%w%s%p]") ~= nil then
        return
    end

    
    for category, data in pairs(anoflow.config_data.cfg_data) do
        config[category] = {}
        for key, element in pairs(data) do
            config[category][key] = ui.get(element)
        end
    end

    
    local cfg = getConfig(name)

    if not cfg then
        
        table.insert(db, { name = name, config = config })
    else
        db[cfg.index].config = config
    end

    database.write(lua.database.configs, db)
end

function deleteConfig(name)
    local db = database.read(lua.database.configs) or {}

    for i, v in pairs(db) do
        if v.name == name then
            table.remove(db, i)
            break
        end
    end

    for i, v in pairs(presets) do
        if v.name == name then
            return false
        end
    end

    database.write(lua.database.configs, db)
    return true
end

function getConfigList()
    local database = database.read(lua.database.configs) or {}
    local config = {}

    for i, v in pairs(presets) do
        table.insert(config, v.name)
    end

    for i, v in pairs(database) do
        table.insert(config, v.name)
    end

    return config
end

function typeFromString(input)
    if type(input) ~= "string" then return input end

    local value = input:lower()

    if value == "true" then
        return true
    elseif value == "false" then
        return false
    elseif tonumber(value) ~= nil then
        return tonumber(value)
    else
        return tostring(input)
    end
end
function loadSettings(config)
    for category, data in pairs(config) do
        for key, value in pairs(data) do
            local element = anoflow.config_data.cfg_data[category][key]
            if element then
                ui.set(element, value)
            else
                print("[DEBUG] Element not found: " .. category .. "." .. key)
            end
        end
    end
end
function importSettings()
    local clipboard_data = clipboard.get()
    if clipboard_data then
        local config = json.parse(clipboard_data)
        loadSettings(config)
    end
end
function exportSettings(name)
    local config = {}

    for category, data in pairs(anoflow.config_data.cfg_data) do
        config[category] = {}
        for key, element in pairs(data) do
            config[category][key] = ui.get(element)
        end
    end

    clipboard.set(json.stringify(config))
end
function loadConfig(name)
    local config = getConfig(name)
    local status, message = pcall(loadSettings)

    if config and status then
        loadSettings(config.config)
    else
        error("Config not found: " .. name .. " error: " .. message)
    end
end

ui.set_callback(menu.configTab.import, function ()
    local protected = function() 
        for k, v in pairs(json.parse(base64.decode(clipboard.get()))) do
            k = ({[1] = "anti_aim", [2] = "aa_other", [3] = "visuals", [4] = "misc"})[k]

            if not anoflow.config_data.cfg_data[k] then
                error("category not found: " .. tostring(k))
                return
            end

            for k2, v2 in pairs(v) do
                if not anoflow.config_data.cfg_data[k][k2] then
                    error("element in config not found: " .. tostring(k) .. "[" .. tostring(k2) .. "]")
                    return
                end

                if v2 == "true" then
                    ui.set(anoflow.config_data.cfg_data[k][k2], true)
                elseif v2 == "false" then
                    ui.set(anoflow.config_data.cfg_data[k][k2], false)
                else
                    ui.set(anoflow.config_data.cfg_data[k][k2], v2)
                end
            end
        end
    end

    local status, message = pcall(protected)
    if not status then
        error("import error: " .. message)
    end
end)

--#endregion configs


local js = panorama.open()
local MyPersonaAPI, LobbyAPI, PartyListAPI, SteamOverlayAPI = js.MyPersonaAPI, js.LobbyAPI, js.PartyListAPI, js.SteamOverlayAPI


event_callback("round_prestart", function()
    if not ui.get(menu.miscTab.auto_buy) then
        return
    end
    local w = ui.get(menu.miscTab.auto_w)
    local p = ui.get(menu.miscTab.auto_p)
    
    if w == "Awp" then
        client.exec("buy awp")
    elseif w == "Scout" then
        client.exec("buy ssg08")
    elseif w == "ScarCT/ScarT" then
        client.exec("buy scar20")
    end

    if p == "Deagle" then
        client.exec("buy deagle")
    elseif p == "Seven/Tec" then
        client.exec("buy tec9")
    end

    if func.includes(ui.get(menu.miscTab.auto_g), "Molotov") then
        client.exec("buy molotov")
    end
    if func.includes(ui.get(menu.miscTab.auto_g), "Grenade") then
        client.exec("buy hegrenade")
    end
    if func.includes(ui.get(menu.miscTab.auto_g), "Smoke") then
        client.exec("buy smokegrenade")
    end

    if func.includes(ui.get(menu.miscTab.auto_add), "Armor") then
        client.exec("buy vest")
    end
    if func.includes(ui.get(menu.miscTab.auto_add), "Full armor") then
        client.exec("buy vesthelm")
    end
    if func.includes(ui.get(menu.miscTab.auto_add), "Zeus") then
       client.exec("buy taser 34")
    end
    if func.includes(ui.get(menu.miscTab.auto_add), "Defuser") then
        client.exec("buy defuser")
    end

end)

func.in_air = (function(player)
    if player == nil then return end
    local flags = entity.get_prop(player, "m_fFlags")
    if flags == nil then return end
    if bit.band(flags, 1) == 0 then
        return true
    end
    return false
end)

function is_vulnerable()
    for _, v in ipairs(entity.get_players(true)) do
        local flags = (entity.get_esp_data(v)).flags

        if bit.band(flags, bit.lshift(1, 11)) ~= 0 then
            return true
        end
    end

    return false
end

function get_velocity(player)
    local x,y,z = entity.get_prop(player, "m_vecVelocity")
    if x == nil then return end
    return math.sqrt(x*x + y*y + z*z)
end


animate_text = function(time, string, r, g, b, a)
    local t_out, t_out_iter = { }, 1

    local l = string:len( ) - 1

    local r_add = (0 - r) * 0.5
    local g_add = (0 - g) * 0.5
    local b_add = (0 - b) * 0.5
    local a_add = (255 - a) * 0.5

    for i = 1, #string do
        local iter = (i - 1)/(#string - 1) + time
        t_out[t_out_iter] = "\a" .. func.RGBAtoHEX( r + r_add * math.abs(math.cos( iter )), g + g_add * math.abs(math.cos( iter )), b + b_add * math.abs(math.cos( iter )), a + a_add * math.abs(math.cos( iter )) )

        t_out[t_out_iter + 1] = string:sub( i, i )

        t_out_iter = t_out_iter + 2
    end

    return t_out
end

glow_module = function(x, y, w, h, width, rounding, accent, accent_inner)
    local thickness = 1
    local Offset = 1
    local r, g, b, a = unpack(accent)
    if accent_inner then
        func.rec(x, y, w, h + 1, rounding, accent_inner)
    end
    for k = 0, width do
        if a * (k/width)^(1) > 5 then
            local accent = {r, g, b, a * (k/width)^(2)}
            func.rec_outline(x + (k - width - Offset)*thickness, y + (k - width - Offset) * thickness, w - (k - width - Offset)*thickness*2, h + 1 - (k - width - Offset)*thickness*2, rounding + thickness * (width - k + Offset), thickness, accent)
        end
    end
end

r_t = globals.realtime()
static_random_value = -50


function generate_slow_random(min, max, interval)
    local c_r = globals.realtime()

    if c_r - r_t >= interval then
        static_random_value = client.random_int(min * 1, max * 1)
        r_t = c_r
    end

    return static_random_value
end

last_update_time2 = globals.realtime()
static_random_value2 = 0

function generate_slow_random2(min, max, interval)
    local current_time = globals.realtime()

    if current_time - last_update_time2 >= interval then
        static_random_value2 = client.random_int(min * 1, max * 1)
        last_update_time2 = current_time
    end

    return static_random_value2
end

last_update_time3 = globals.realtime()
last_update_time4 = globals.realtime()
function value_to_0(value, interval)
    if last_update_time3 - last_update_time4 >= interval then
        value = 0
        last_update_time4 = last_update_time3
    end

    if value == 0 and last_update_time3 - last_update_time4 >= interval then
        last_update_time4 = last_update_time3
    elseif value ~= 0 and last_update_time3 - last_update_time4 >= interval then
        value = value
    end
end


local aa = {
	ignore = false,
	input = 0,
}


vars.last_press = 0
vars.aa_dir = 0
vars.pitch = 0


local screen_x, screen_y = client.screen_size()
local hud_x = screen_x / 2
local hud_y = screen_y / 2

local key_table = {
    ALPHA = 0,
    references = {},
    hotkey_id = {
        "holding",
        "toggled",
        "disabled"
    },
    target_alpha = 255,
    animation_speed = 8,
    last_update = globals.realtime(),
    item_states = {},
    active_items = {},
    item_count = function(tab)
        if tab == nil then return 0 end
        if #tab == 0 then
            local val = 0
            for k in pairs(tab) do
                val = val + 1
            end
            return val
        end
        return #tab
    end,
}

vars.create_item = function(tab, container, name, arg, cname)
    local collected = { }
    local reference = { ui.reference(tab, container, name) }

    for i=1, #reference do
        if i <= arg then
            collected[i] = reference[i]
        end
    end

    local item_name = cname or name
    key_table.references[item_name] = collected
    
    if key_table.item_states[item_name] == nil then
        key_table.item_states[item_name] = {
            alpha = 0,
            height = 0,
            active = false
        }
    end
end

draggging = (function()local a={}local b,c,d,e,f,g,h,i,j,k,l,m,n,o;local p={__index={drag=function(self,...)local q,r=self:get()local s,t=a.drag(q,r,...)if q~=s or r~=t then self:set(s,t)end;return s,t end,set=function(self,q,r)local j,k=client.screen_size()ui.set(self.x_reference,q/j*self.res)ui.set(self.y_reference,r/k*self.res)end,get=function(self)local j,k=client.screen_size()return ui.get(self.x_reference)/self.res*j,ui.get(self.y_reference)/self.res*k end}}function a.new(u,v,w,x)x=x or 10000;local j,k=client.screen_size()local y=ui.new_slider("LUA","A",u.." window position",0,x,v/j*x)local z=ui.new_slider("LUA","A","\n"..u.." window position y",0,x,w/k*x)ui.set_visible(y,false)ui.set_visible(z,false)return setmetatable({name=u,x_reference=y,y_reference=z,res=x},p)end;function a.drag(q,r,A,B,C,D,E)if globals.framecount()~=b then c=ui.is_menu_open()f,g=d,e;d,e=ui.mouse_position()i=h;h=client.key_state(0x01)==true;m=l;l={}o=n;n=false;j,k=client.screen_size()end;if c and i~=nil then if(not i or o)and h and f>q and g>r and f<q+A and g<r+B then n=true;q,r=q+d-f,r+e-g;if not D then q=math.max(0,math.min(j-A,q))r=math.max(0,math.min(k-B,r))end end end;table.insert(l,{q,r,A,B})return q,r,A,B end;return a end)()

key_table.hotkeys_dragging = draggging.new("Hotkeys", 100, 200)

vars.keylist = function()
    if not ui.get(menu.visualsTab.key_list) then
        key_table.ALPHA = math.max(key_table.ALPHA - globals.frametime() * key_table.animation_speed * 2, 0)
        return
    end

    local current_time = globals.realtime()
    local delta_time = current_time - key_table.last_update
    key_table.last_update = current_time

    key_table.active_items = {}

    local x_offset = 0
    for ref, current_ref in pairs(key_table.references) do
        local count = key_table.item_count(current_ref)
        local is_active = true
        local state = { ui.get(current_ref[count]) }

        if count > 1 then
            is_active = ui.get(current_ref[1])
        end

        if is_active and state[2] ~= 0 and (state[2] == 3 and not state[1] or state[2] ~= 3 and state[1]) then
            key_table.active_items[ref] = key_table.hotkey_id[state[2]]
            local ms = renderer.measure_text(nil, ref)
            if ms > x_offset then
                x_offset = ms
            end
        end
    end

    if ui.is_menu_open() then
        x_offset = 55
        key_table.active_items = {
            ["menu item"] = "state"
        }
    end

    key_table.target_alpha = next(key_table.active_items) ~= nil and 255 or 0
    key_table.ALPHA = key_table.ALPHA + (key_table.target_alpha - key_table.ALPHA) * math.min(1, delta_time * key_table.animation_speed)

    for ref, state in pairs(key_table.item_states) do
        if key_table.active_items[ref] then
            state.target_alpha = 255
            state.target_height = 15
            state.active = true
        else
            state.target_alpha = 0
            state.target_height = 0
            state.active = false
        end

        state.alpha = state.alpha + (state.target_alpha - state.alpha) * math.min(1, delta_time * key_table.animation_speed * 2)
        state.height = state.height + (state.target_height - state.height) * math.min(1, delta_time * key_table.animation_speed * 3)
    end

    if key_table.ALPHA < 5 then
        return
    end

    local total_height = 20
    for ref, state in pairs(key_table.item_states) do
        if state.height > 0.5 then
            total_height = total_height + state.height
        end
    end

    local x, y = key_table.hotkeys_dragging:get()
    local w = 75 + x_offset
    local r, g, b, a = ui.get(calar)
    a = math.min(key_table.ALPHA, a)

    local static_height = 19
    local r_bg, g_bg, b_bg, a_bg = 8, 8, 7, math.floor(a * (140 / 255))
    local text_alpha = math.floor(a)

    renderer_rectangle_rounded(x + 4, y, w, static_height, r_bg, g_bg, b_bg, a_bg, 4)
    solus_render.container_glow(x + 4, y, w, static_height, r, g, b, 0, 1, r, g, b)

    renderer.gradient(x + 4, y + 2, 2, static_height - 4, r, g, b, text_alpha, r, g, b, text_alpha, true)
    renderer.gradient(x + w + 2, y + 2, 2, static_height - 4, r, g, b, text_alpha, r, g, b, text_alpha, true)

    renderer.circle_outline(x + 7, y + 3, r, g, b, text_alpha, 3, 132, 0.4, 1.5)
    renderer.circle_outline(x + 7, y + static_height - 3, r, g, b, text_alpha, 3, 75, 0.4, 1.5)
    renderer.circle_outline(x + w + 1, y + 3, r, g, b, text_alpha, 3, 260, 0.4, 1.5)
    renderer.circle_outline(x + w + 1, y + static_height - 3, r, g, b, text_alpha, 3, 312, 0.4, 1.5)

    local text_width = renderer.measure_text(nil, "Hotkeys")
    local text_x = x + (w - text_width) / 2
    local text_y = y + (static_height - 10) / 2 - 1
    renderer.text(text_x + 23, text_y + 4, 255, 255, 255, text_alpha, "c", nil, "Hotkeys")

    local current_y = y + static_height
    for ref, state in pairs(key_table.item_states) do
        if state.height > 0.5 then
            local item_alpha = math.floor(state.alpha * (a / 255))
            local key_type = key_table.active_items[ref] and "[" .. key_table.active_items[ref] .. "]" or ""

            renderer.text(x + 5, current_y + (state.height - 10)/2, 
                         255, 255, 255, item_alpha, "", 0, ref)
            if key_type ~= "" then
                renderer.text(x + w - renderer.measure_text(nil, key_type) - 5, 
                             current_y + (state.height - 10)/2, 
                             255, 255, 255, item_alpha, "", 0, key_type)
            end
            
            current_y = current_y + state.height
        end
    end

    key_table.hotkeys_dragging:drag(w, total_height)
end

vars.create_item('RAGE', 'Aimbot', 'Enabled', 2, 'Rage aimbot')
vars.create_item('RAGE', 'Aimbot', 'Force safe point', 1, 'Safe point')
vars.create_item('RAGE', 'Other', 'Quick peek assist', 2)
vars.create_item('RAGE', 'Aimbot', 'Force body aim', 1)
vars.create_item('RAGE', 'Other', 'Duck peek assist', 1)
vars.create_item('RAGE', 'Aimbot', 'Double tap', 2)
vars.create_item('RAGE', 'Aimbot', 'Minimum damage override', 2, 'Damage override')
vars.create_item('AA', 'Anti-aimbot angles', 'Freestanding', 2)
vars.create_item('AA', 'Other', 'Slow motion', 2)
vars.create_item('AA', 'Other', 'On shot anti-aim', 2)
vars.create_item('AA', 'Other', 'Fake peek', 2)
vars.create_item('MISC', 'Movement', 'Z-Hop', 2)
vars.create_item('MISC', 'Movement', 'Pre-speed', 2)
vars.create_item('MISC', 'Movement', 'Blockbot', 2)
vars.create_item('MISC', 'Movement', 'Jump at edge', 2)
vars.create_item('MISC', 'Miscellaneous', 'Last second defuse', 1)
vars.create_item('MISC', 'Miscellaneous', 'Free look', 1)
vars.create_item('MISC', 'Miscellaneous', 'Ping spike', 2)
vars.create_item('MISC', 'Miscellaneous', 'Automatic grenade release', 2, 'Grenade release')
vars.create_item('VISUALS', 'Player ESP', 'Activation type', 1, 'Visuals')
vars.create_item('AA', 'Anti-aimbot angles', ' Automatic teleport', 2, 'Automatic teleport')
vars.create_item('AA', 'Fake lag', ' Manual left', 1, 'Manual left')
vars.create_item('AA', 'Fake lag', ' Manual right', 1, 'Manual right')

event_callback("player_connect_full", function() 
	aa.ignore = false
	aa.input = 0
    vars.last_press = 0
    vars.aa_dir = 0
end) 

local tt = {
    default_kill = {
        '𝒜𝓃𝑜𝒻𝓁𝑜𝓌 𝐷𝑜𝓂𝒾𝓃𝒶𝓉𝒾𝑜𝓃',
        'ɴᴏᴛʜɪɴɢ ᴘᴇʀsᴏɴᴀʟ, ᴊᴜsᴛ ᴅᴀᴛᴀ ᴄᴏʟʟᴇᴄᴛɪᴏɴ',
        '𝙉𝙤𝙘𝙩𝙪𝙧𝙣𝙖𝙡 𝙀𝙣𝙙𝙜𝙖𝙢𝙚 ⛧ 𝔸𝕟𝕠𝕗𝕝𝕠𝕨',
        '𝒯𝐻𝐸 𝒜𝒩𝒪𝐹𝐿𝒪𝒲 𝒦𝐼𝒩𝒢',
        '𝑼𝒏𝒔𝒕𝒐𝒑𝒑𝒂𝒃𝒍𝒆 𝒑𝒐𝒘𝒆𝒓 - 𝑨𝒏𝒐𝒇𝒍𝒐𝒘',
        '₲ⱤØɄ₦Đ 𝔷ɆⱤØ, ₮ⱧɆ ₲₳₥Ɇ ł₴ 𝕆VɆⱤ',
        '𝙏𝙝𝙞𝙨 𝙬𝙖𝙨𝙣𝙩 𝙡𝙪𝙘𝙠, 𝙞𝙩 𝙬𝙖𝙨 𝙖𝙣𝙩𝙞-𝙖𝙞𝙢',
        '𝐔𝐍𝐁𝐑𝐄𝐀𝐊𝐀𝐁𝐋𝐄',
        '𝟯𝟬𝟯$ 𝗿𝗲𝘀𝗼𝗹𝘃𝗲𝗿'
    },
    rus_kill = {
        '',
        'далбаёб как ты помираешь',
        'ебать аимтулс бустит',
        '1',
        'нет норм луа чтол?',
        'АХАХАХАХ ВОТ ЭТО МУВЫ',
        'ну? и где твои рекламные трештолки в обосаных луа?',
        'басота сеты ангелвингс',
        'ну ебать ты помираешт рил',
        'дэш накодил мне ресольвер, я заебался...',
        'деш попросил выебать тебя в попачку, выполняю приказ (сука дэш это не d44sh а dasfhwe)'
    }
}
local userid_to_entindex, get_local_player, is_enemy, console_cmd = client.userid_to_entindex, entity.get_local_player, entity.is_enemy, client.exec

function on_player_death(e)
    if not ui.get(menu.miscTab.kill_say) then return end

    local victim_userid, attacker_userid = e.userid, e.attacker
    if victim_userid == nil or attacker_userid == nil then
        return
    end
    local bebebe
    local victim_entindex = userid_to_entindex(victim_userid)
    local attacker_entindex = userid_to_entindex(attacker_userid)

    if attacker_entindex == get_local_player() and is_enemy(victim_entindex) then
        if not entity.is_alive(entity.get_local_player()) then return end
        bebebe = tt.default_kill[math.random(1, #tt.default_kill)]
        client.delay_call(0.8, function()
            console_cmd("say ", bebebe) 
        end)   
    end
end
event_callback("player_death", on_player_death)


local delsw, a_bodydel, delaa, d_sw, bodydel, last_switch_time = false, false, false, false, false,  globals.curtime()

local local_player, callback_reg, dt_charged = entity.get_local_player(), false, false

function check_charge()
    local m_nTickBase = entity.get_prop(entity.get_local_player(), 'm_nTickBase')
    local client_latency = client.latency()
    local shift = math.floor(m_nTickBase - globals.tickcount() - 3 - toticks(client_latency) * .5 + .5 * (client_latency * 10))

    local wanted = -14 + (ui.get(ref.doubletap.fakelag_limit) - 1) + 3 

    dt_charged = shift <= wanted
end

local ae = true
local elect_svg = renderer.load_svg("<svg id=\"svg\" version=\"1.1\" width=\"608\" height=\"689\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" ><g id=\"svgg\"><path id=\"path0\" d=\"M185.803 18.945 C 184.779 19.092,182.028 23.306,174.851 35.722 C 169.580 44.841,157.064 66.513,147.038 83.882 C 109.237 149.365,100.864 163.863,93.085 177.303 C 88.686 184.901,78.772 202.072,71.053 215.461 C 63.333 228.849,53.959 245.069,50.219 251.505 C 46.480 257.941,43.421 263.491,43.421 263.837 C 43.421 264.234,69.566 264.530,114.025 264.635 L 184.628 264.803 181.217 278.618 C 179.342 286.217,174.952 304.128,171.463 318.421 C 167.974 332.714,160.115 364.836,153.999 389.803 C 147.882 414.770,142.934 435.254,143.002 435.324 C 143.127 435.452,148.286 428.934,199.343 364.145 C 215.026 344.243,230.900 324.112,234.619 319.408 C 238.337 314.704,254.449 294.276,270.423 274.013 C 286.397 253.750,303.090 232.582,307.519 226.974 C 340.870 184.745,355.263 166.399,355.263 166.117 C 355.263 165.937,323.554 165.789,284.798 165.789 C 223.368 165.789,214.380 165.667,214.701 164.831 C 215.039 163.949,222.249 151.366,243.554 114.474 C 280.604 50.317,298.192 19.768,298.267 19.444 C 298.355 19.064,188.388 18.576,185.803 18.945 \" stroke=\"none\" fill=\"#fff200\" fill-rule=\"evenodd\"></path></g></svg>", 25, 25)

set_spin = function(cmd)
    ui.set(refs.pitch[1], "Off")
    ui.set(refs.pitch[2], 0)
    ui.set(refs.yawBase, "At targets")
    ui.set(refs.yaw[1], "Spin")
    ui.set(refs.yaw[2], ui.get(menu.aaTab.spin_speed))
    ui.set(refs.yawJitter[1], "Off")
    ui.set(refs.yawJitter[2], 0)
    ui.set(refs.bodyYaw[1], "Static")
    ui.set(refs.bodyYaw[2], 0)
    ui.set(refs.fsBodyYaw, false)
    ui.set(refs.edgeYaw, false)
    ui.set(refs.roll, 0)
    aa.ignore = true
    cmd.force_defensive = true
end
last_fps, update_interval, frame_count, lastmiss, bruteforce_reset, shot_time = 0, 60, 0, 0, true, 0

value321 = 0
local threat_origin_wts_x = 0
local last_sim_time = 0
local defensive_until = 0
abstoflick = 0
clamper = function(count)
    if count > 180 then 
        return -180 + (count - 180)
    elseif count < -180 then
        return 180 - (-180 - count)
    end
end

is_defensive_active = function()
    local tickcount = globals.tickcount()
    local sim_time = toticks(entity.get_prop(entity.get_local_player(), "m_flSimulationTime"))
    local sim_diff = sim_time - last_sim_time

    if sim_diff < 0 then
        defensive_until = tickcount + math.abs(sim_diff) - toticks(client.latency())
    end

    last_sim_time = sim_time

    return defensive_until > tickcount
end

def_switch = false

L110 = function(L107, L108, L109)
    return math.max(math.min(L107, L109), L108)
end

L138 = function(L137)
    while L137 > 180 do
        L137 = L137 - 360
    end;
    while L137 < -180 do
        L137 = L137 + 360
    end;
    return L137
end
vars.yaw_increment_spin = 0
L33 = function()
    vars.yaw_increment_spin = vars.yaw_increment_spin + 20
    if vars.yaw_increment_spin >= 1080 then
        vars.yaw_increment_spin = 0
    end
end
vars.yaw2 = 0
main_aa = function(cmd)

    if not is_defensive_active() then
        vars.yaw2 = client.random_int(-180, 180)
    end
    vars.localPlayer = entity.get_local_player()

    if not vars.localPlayer or not entity.is_alive(vars.localPlayer) then return end
	local flags = entity.get_prop(vars.localPlayer, "m_fFlags")
    local onground = bit.band(flags, 1) ~= 0 and cmd.in_jump == 0
	local valve = entity.get_prop(entity.get_game_rules(), "m_bIsValveDS")
	local origin = vector(entity.get_prop(vars.localPlayer, "m_vecOrigin"))
	local camera = vector(client.camera_angles())
	local eye = vector(client.eye_position())
    local velocity = vector(entity.get_prop(vars.localPlayer, "m_vecVelocity"))
    local weapon = entity.get_player_weapon()
	local pStill = math.sqrt(velocity.x ^ 2 + velocity.y ^ 2) < 5
    local bodyYaw = entity.get_prop(vars.localPlayer, "m_flPoseParameter", 11) * 120 - 60
    local isSlow = ui.get(refs.slow[1]) and ui.get(refs.slow[2])
	local isOs = ui.get(refs.os[1]) and ui.get(refs.os[2])
	local isFd = ui.get(refs.fakeDuck)
	local isDt = ui.get(refs.dt[1]) and ui.get(refs.dt[2])
    local isFl = ui.get(ref_ui("AA", "Fake lag", "Enabled"))
    local isFs1 = ui.get(menu.aaTab.freestandHotkey)
    local legitAA = false
    local man_aa = ui.get(menu.aaTab.m_left) or ui.get(menu.aaTab.m_right)

    vars.pState = 1
    if pStill then vars.pState = 2 end
    if not pStill then vars.pState = 3 end
    if isSlow then vars.pState = 4 end
    if entity.get_prop(vars.localPlayer, "m_flDuckAmount") > 0.1 then vars.pState = 5 end
    if not pStill and entity.get_prop(vars.localPlayer, "m_flDuckAmount") > 0.1 then vars.pState = 8 end
    if not onground then vars.pState = 6 end
    if not onground and entity.get_prop(vars.localPlayer, "m_flDuckAmount") > 0.1 then vars.pState = 7 end
    if isFs1 and ui.get(aaBuilder[10].enableState) then vars.pState = 10 end
    if entity.is_dormant(client.current_threat()) and entity.is_alive(client.current_threat()) and ui.get(aaBuilder[11].enableState) then vars.pState = 11 end


    if ui.get(aaBuilder[9].enableState) and not func.table_contains(ui.get(aaBuilder[9].stateDisablers), vars.intToS[vars.pState]) and isDt == false and isOs == false and isFl == true then
		vars.pState = 9
    end

    if ui.get(aaBuilder[vars.pState].enableState) == false and vars.pState ~= 1 then
        vars.pState = 1
    end

    if (tickcount() % ui.get(aaBuilder[vars.pState].def_yaw_switch_delay)) == 1 then
        dele = not dele
    end

    if (tickcount() % math.random(1, 12) == 1) then
        delaa = not delaa
    end

    if (globals.tickcount() % ui.get(aaBuilder[vars.pState].def_jit_delay)) == 1 then
        d_sw = not d_sw
    end

    local da_value = ui.get(aaBuilder[vars.pState].delayed_body)
    local ra_value = ui.get(aaBuilder[vars.pState].random_delay)
    local dl_t = ui.get(aaBuilder[vars.pState].aa_ran)
    local lr_t = ui.get(aaBuilder[vars.pState].aa_ran2)

    if (globals.tickcount() % math.random((da_value * 2), (da_value * 2) + (ra_value-1) + dl_t)) == 1 then
        bodydel = not bodydel
    end

    if (globals.tickcount() % 6) == 1 then
        a_bodydel = not a_bodydel
    end

    if (globals.tickcount() % 14) == 1 then
        def_switch = not def_switch
    end


    ui.set(refs.yawBase, ui.get(aaBuilder[vars.pState].yaw_base))

    
    if ui.get(menu.aaTab.freestandHotkey) then
        ui.set(refs.freeStand[2], "Always on")
        ui.set(refs.freeStand[1], true)
    else
        ui.set(refs.freeStand[1], false)
        ui.set(refs.freeStand[2], "On hotkey")
    end
    local nextAttack = entity.get_prop(vars.localPlayer, "m_flNextAttack")
    local nextPrimaryAttack = entity.get_prop(entity.get_player_weapon(vars.localPlayer), "m_flNextPrimaryAttack")
    local dtActive = false
    if nextPrimaryAttack ~= nil then
        dtActive = not (math.max(nextPrimaryAttack, nextAttack) > globals.curtime())
    end
    local side = bodyYaw > 0 and 1 or -1


    safe_head = function()
        ui.set(refs.pitch[1], "Down")
        ui.set(refs.yawBase, "At targets")
        ui.set(refs.yaw[1], "180")
        ui.set(refs.yaw[2], 16)
        ui.set(refs.yawJitter[1], "Off")
        ui.set(refs.yawJitter[2], 0)
        ui.set(refs.bodyYaw[1], "Static")
        ui.set(refs.bodyYaw[2], 2)
        ui.set(refs.fsBodyYaw, false)
        --ui.set(refs.edgeYaw, false)
        ui.set(refs.roll, 0)
        aa.ignore = true
    end

    get_distance = function() 
        local result = math.huge;
        local heightDifference = 0;
        local localplayer = entity.get_local_player();
        local entities = entity.get_players(true);
    
        for i = 1, #entities do
          local ent = entities[i];
          local ent_origin = { entity.get_origin(ent) }
          local lp_origin = { entity.get_origin(localplayer) }
          if ent ~= localplayer and entity.is_alive(ent) then
            local distance = (vector(ent_origin[1], ent_origin[2], ent_origin[3]) - vector(lp_origin[1], lp_origin[2], lp_origin[3])):length2d();
            if distance < result then 
                result = distance; 
                heightDifference = ent_origin[3] - lp_origin[3];
            end
          end
        end
      
        return math.floor(result/10), math.floor(heightDifference);
    end

    local distance_to_enemy = {get_distance()}

    if ae and (func.includes(ui.get(menu.aaTab.safe_head), "Air Zeus hold") and vars.pState == 7 and entity.get_classname(entity.get_player_weapon(vars.localPlayer)) == "CWeaponTaser") or (func.includes(ui.get(menu.aaTab.safe_head), "Air Knife hold") and vars.pState == 7 and entity.get_classname(entity.get_player_weapon(vars.localPlayer)) == "CKnife") or (func.includes(ui.get(menu.aaTab.safe_head), "Target lower than you") and distance_to_enemy[2] < -50) then
        if not ui.get(menu.aaTab.safe_flick) then
            safe_head()
        elseif ui.get(menu.aaTab.safe_flick) then
            cmd.force_defensive = true
            if not is_defensive_active() then
                ui.set(refs.pitch[1], "Down")
                ui.set(refs.yawBase, "At targets")
                ui.set(refs.yaw[1], "180")
                ui.set(refs.yaw[2], 0)
                ui.set(refs.yawJitter[1], "Off")
                ui.set(refs.yawJitter[2], 0)
                ui.set(refs.bodyYaw[1], "Static")
                ui.set(refs.bodyYaw[2], 0)
                ui.set(refs.fsBodyYaw, false)
                --ui.set(refs.edgeYaw, false)
                ui.set(refs.roll, 0)
                aa.ignore = true
            elseif is_defensive_active() then
                if ui.get(menu.aaTab.safe_flick_mode) == "Flick" then
                    ui.set(refs.pitch[1], "Down")
                    ui.set(refs.yawBase, "At targets")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], 90)
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 1)
                    ui.set(refs.bodyYaw[1], "Static")
                    ui.set(refs.bodyYaw[2], 0)
                    ui.set(refs.fsBodyYaw, false)
                    --ui.set(refs.edgeYaw, false)
                    ui.set(refs.roll, 0)
                    aa.ignore = true
                elseif ui.get(menu.aaTab.safe_flick_mode) == "E spam" then
                    if ui.get(menu.aaTab.safe_flick_pitch) == "Fluctuate" then
                        local speed = 8
                        local range = 80
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], (-math.sin(globals.curtime() * speed) * range))
                    elseif ui.get(menu.aaTab.safe_flick_pitch) == "Custom" then
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], ui.get(menu.aaTab.safe_flick_pitch_value))
                    end
                    ui.set(refs.yawBase, "At targets")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], 180)
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 1)
                    ui.set(refs.bodyYaw[1], "Off")
                    ui.set(refs.bodyYaw[2], 0)
                    ui.set(refs.fsBodyYaw, false)
                    --ui.set(refs.edgeYaw, false)
                    ui.set(refs.roll, 0)
                    aa.ignore = true
                elseif ui.get(menu.aaTab.safe_flick_mode) == "Up random" then
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], -45)
                    ui.set(refs.yawBase, "At targets")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], 0)
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], 90)
                    ui.set(refs.bodyYaw[1], "Jitter")
                    ui.set(refs.bodyYaw[2], 41)
                    ui.set(refs.fsBodyYaw, false)
                    ui.set(refs.roll, 0)
                    aa.ignore = true
                end
            end
        end
    else
        aa.ignore = false
    end

    if not (ui.get(menu.aaTab.legitAAHotkey) and cmd.in_use == 1) and aa.ignore == false then
        if ui.get(aaBuilder[vars.pState].enableState) then
        if ui.get(aaBuilder[vars.pState].force_defensive) then
            if ui.get(aaBuilder[vars.pState].defensive_delay) ~= 0 then
                if globals.tickcount() % ui.get(aaBuilder[vars.pState].defensive_delay) == 0 then
                    cmd.force_defensive = true
                end
            else
                cmd.force_defensive = true
            end
        else
            if is_peeking() or isOs then
                cmd.force_defensive = true
            else
                cmd.force_defensive = false
            end
        end
            if ui.get(aaBuilder[vars.pState].defensiveAntiAim) and ((isDt and is_defensive_active()) or isOs and is_defensive_active()) then
                if ui.get(aaBuilder[vars.pState].def_pitch) == " 3-way" then
                    local first = ui.get(aaBuilder[vars.pState].def_3_1)
                    local second = ui.get(aaBuilder[vars.pState].def_3_2)
                    local third = ui.get(aaBuilder[vars.pState].def_3_3)
                    if tickcount() % 3 == 0 then
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], first)
                    elseif tickcount() % 3 == 1 then
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], second)
                    elseif tickcount() % 3 == 2 then
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], third)
                    end
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Custom" then
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], ui.get(aaBuilder[vars.pState].def_pitchSlider))
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Switch" then
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], d_sw and ui.get(aaBuilder[vars.pState].def_pitch_s1) or ui.get(aaBuilder[vars.pState].def_pitch_s2))
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Dynamic" then
                    local min_value = ui.get(aaBuilder[vars.pState].def_pitch_s1)
                    local max_value = ui.get(aaBuilder[vars.pState].def_pitch_s2)
                    local speed = ui.get(aaBuilder[vars.pState].def_dyn_speed)
                    
                    local function get_pitch_value()
                        local midpoint = (min_value + max_value) / 2
                        local amplitude = (max_value - min_value) / 2
                        return midpoint + math.sin(globals.curtime() * speed) * amplitude
                    end
                    
                        ui.set(refs.pitch[1], "Custom")
                        ui.set(refs.pitch[2], get_pitch_value())
                    
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Random" then
                    local first = ui.get(aaBuilder[vars.pState].def_pitch_s1)
                    local second = ui.get(aaBuilder[vars.pState].def_pitch_s2)
                    local speed = ui.get(aaBuilder[vars.pState].def_slow_gen)
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], generate_slow_random2(first, second, speed / 10))
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Random (gamesense)" then
                    ui.set(refs.pitch[1], "Random")
                    ui.set(refs.pitch[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Sway" then
                    local min_value = ui.get(aaBuilder[vars.pState].def_pitch_s1)
                    local max_value = ui.get(aaBuilder[vars.pState].def_pitch_s2)
                    local speed = ui.get(aaBuilder[vars.pState].def_dyn_speed) * 60
                    local delay = 1
                    local last_update = 0
                    
                    local function get_pitch_value()
                        local t = globals.curtime() * speed
                        local range = max_value - min_value
                        local progress = t % range
                        return min_value + progress
                    end
                    
                    local function update_pitch()
                        if globals.curtime() - last_update >= delay then
                            ui.set(refs.pitch[1], "Custom")
                            ui.set(refs.pitch[2], get_pitch_value())
                            last_update = globals.curtime()
                        end
                    end
                    
                    update_pitch()
                elseif ui.get(aaBuilder[vars.pState].def_pitch) == " Flick" then
                    ui.set(refs.pitch[1], "Custom")
                    if globals.tickcount() % math.random(15, 20) > 1 then
                        ui.set(refs.pitch[2], ui.get(aaBuilder[vars.pState].def_pitch_s1))
                    else
                        ui.set(refs.pitch[2], ui.get(aaBuilder[vars.pState].def_pitch_s2))
                    end
                end
                
                if ui.get(aaBuilder[vars.pState].def_yawMode) == " Switch" then
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], dele and ui.get(aaBuilder[vars.pState].def_yaw_left) or ui.get(aaBuilder[vars.pState].def_yaw_right))
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].def_yaw_random))
                    if set_brute and ui.get(aaBuilder[vars.pState].def_switch_brute) then
                        ui.set(refs.yawJitter[1], "Random")
                        ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].def_yaw_random))
                        ui.set(refs.yaw[1], "Spin")
                        ui.set(refs.yaw[2], 20)
                    end
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Custom" then
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].def_yaw_random))
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], ui.get(aaBuilder[vars.pState].def_yawStatic))
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " 3-ways" then
                    ui.set(refs.yaw[1], "180")
                    local ways = {
                        ui.get(aaBuilder[vars.pState].def_way_1),
                        ui.get(aaBuilder[vars.pState].def_way_2),
                        ui.get(aaBuilder[vars.pState].def_way_3)
                    }

                    ui.set(refs.yaw[2], ways[(tickcount() % 3) + 1] )
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Spin" then
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].def_yaw_random))
                    ui.set(refs.yaw[1], "Spin")
                    ui.set(refs.yaw[2], ui.get(aaBuilder[vars.pState].def_yawStatic))
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Distorion" then
                    local angle1 = ui.get(aaBuilder[vars.pState].def_yaw_left)
                    local angle2 = ui.get(aaBuilder[vars.pState].def_yaw_right)
                    local speed = ui.get(aaBuilder[vars.pState].def_yaw_exploit_speed) / 3
                    
                    local mid = (angle1 + angle2) / 2
                    local amplitude = (angle2 - angle1) / 2
                    local yaw_value = mid + math.sin(globals.curtime() * speed) * amplitude
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], yaw_value)
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Spin V2" then
                    local speed = ui.get(aaBuilder[vars.pState].def_yaw_spin_speed) / 7
                    local range = ui.get(aaBuilder[vars.pState].def_yaw_spin_range)
                    local spined = math.lerp(-range * 0.5, range * 0.5, math.sin(globals.curtime() * speed % 1))
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], spined)
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Random" then
                    local first = ui.get(aaBuilder[vars.pState].def_yaw_left)
                    local second = ui.get(aaBuilder[vars.pState].def_yaw_right)
                    local speed = ui.get(aaBuilder[vars.pState].def_slow_gena)
                    -- ui.set(refs.yaw[1], "180")
                    -- ui.set(refs.yaw[2], generate_slow_random(first, second, speed / 10))
                    -- ui.set(refs.yawJitter[1], "Off")
                    -- ui.set(refs.yawJitter[2], 0)

                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], L110(L138(180 + generate_slow_random(first, second, speed / 10)), -180, 180))
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)

                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Random static" then
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], vars.yaw2)
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Flick" then
                    local first = ui.get(aaBuilder[vars.pState].def_yaw_left)
                    local second = ui.get(aaBuilder[vars.pState].def_yaw_right)
                    ui.set(refs.yaw[1], "180")
                    if client.current_threat() then
                        local threat_origin = vector(entity.get_origin(client.current_threat()))
                        local screen_size = vector(client.screen_size())
                        if threat_origin_wts_x then
                            if threat_origin_wts_x > screen_size.x/2 then
                                if globals.tickcount() % ui.get(aaBuilder[vars.pState].def_yaw_switch_delay) > 1 then
                                    ui.set(refs.yaw[2], first)
                                else
                                    ui.set(refs.yaw[2], second)
                                end
                            elseif threat_origin_wts_x < screen_size.x/2 then
                                if globals.tickcount() % ui.get(aaBuilder[vars.pState].def_yaw_switch_delay) > 1 then
                                    ui.set(refs.yaw[2], -first)
                                else
                                    ui.set(refs.yaw[2], -second)
                                end
                            end
                        end
                    else
                        if globals.tickcount() % ui.get(aaBuilder[vars.pState].def_yaw_switch_delay) > 1 then
                            ui.set(refs.yaw[2], first)
                        else
                            ui.set(refs.yaw[2], second)
                        end
                    end
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].def_yaw_random))
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Move yaw" then
                    if cmd.in_moveright == 1 then
                        ui.set(refs.yaw[1], "180")
                        ui.set(refs.yaw[2], 90)
                    end
                    if cmd.in_moveleft == 1 then
                        ui.set(refs.yaw[1], "180")
                        ui.set(refs.yaw[2], -90)
                    end
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == " Threat_origin" then
                    if client.current_threat() then
                        local threat_origin = vector(entity.get_origin(client.current_threat()))
                        local screen_size = vector(client.screen_size())
                        if threat_origin_wts_x then
                            if threat_origin_wts_x > screen_size.x/2 then
                                ui.set(refs.yaw[1], "180")
                                ui.set(refs.yaw[2], 90)
                            elseif threat_origin_wts_x < screen_size.x/2 then
                                ui.set(refs.yaw[1], "180")
                                ui.set(refs.yaw[2], -90)
                            end
                        end
                    end
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)    
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == "Normalize" then
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], L110(L138(vars.yaw_increment_spin), -180, 180))
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].def_yawMode) == "Disabled" then
                    if ui.get(aaBuilder[vars.pState].yaw) == " Left & Right" then
                        ui.set(refs.yaw[1], "180")
                        ui.set(refs.yaw[2],(side == 1 and (ui.get(aaBuilder[vars.pState].yawLeft) - math.random(0, ui.get(aaBuilder[vars.pState].randomization)) - math.random(0, ui.get(aaBuilder[vars.pState].aa_ran2))) or (ui.get(aaBuilder[vars.pState].yawRight) + math.random(0, ui.get(aaBuilder[vars.pState].randomization)) + ui.get(aaBuilder[vars.pState].aa_ran2))))
                    end
                end

                if ui.get(aaBuilder[vars.pState].bidy) then
                    ui.set(refs.bodyYaw[1], "Off")
                else
                    if ui.get(aaBuilder[vars.pState].body_yaw) == " Jitter" then
                        ui.set(refs.bodyYaw[1], "Static")
                        ui.set(refs.bodyYaw[2], bodydel and 1 or -1)
                    elseif ui.get(aaBuilder[vars.pState].body_yaw) == " Static" then
                        local value = ui.get(aaBuilder[vars.pState].aa_ran3)
                        ui.set(refs.bodyYaw[1], "Static")
                        ui.set(refs.bodyYaw[2], ui.get(aaBuilder[vars.pState].desync))
                    end
                end
           
            else
                ui.set(refs.pitch[1], ui.get(aaBuilder[vars.pState].pitch))

                if ui.get(aaBuilder[vars.pState].yaw) == " Left & Right" then
                    ui.set(refs.yaw[1], "180")
                    local value = L110(L138(ui.get(aaBuilder[vars.pState].yaw_main) + (side == 1 and (ui.get(aaBuilder[vars.pState].yawLeft) - math.random(0, ui.get(aaBuilder[vars.pState].randomization)) - math.random(0, ui.get(aaBuilder[vars.pState].aa_ran2))) or (ui.get(aaBuilder[vars.pState].yawRight) + math.random(0, ui.get(aaBuilder[vars.pState].randomization)) + ui.get(aaBuilder[vars.pState].aa_ran2)))), -180, 180)
                    ui.set(refs.yaw[2], value)
                end

                if ui.get(aaBuilder[vars.pState].yaw_jitter) == 5 then
                    ui.set(refs.yawJitter[1], "Center")
                    local ways = {
                        ui.get(aaBuilder[vars.pState].wayFirst),
                        ui.get(aaBuilder[vars.pState].waySecond),
                        ui.get(aaBuilder[vars.pState].wayThird)
                    }

                    ui.set(refs.yawJitter[2], ways[(tickcount() % 3) + 1] )
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 6 then
                    ui.set(refs.yawJitter[1], "Center")
                    local ways = {
                        ui.get(aaBuilder[vars.pState].j_1),
                        ui.get(aaBuilder[vars.pState].j_2),
                        ui.get(aaBuilder[vars.pState].j_3),
                        ui.get(aaBuilder[vars.pState].j_4),
                        ui.get(aaBuilder[vars.pState].j_5),
                        ui.get(aaBuilder[vars.pState].j_6),
                        ui.get(aaBuilder[vars.pState].j_7),
                    }

                    ui.set(refs.yawJitter[2], ways[(tickcount() % 7) + 1] )
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 7 then
                    ui.set(refs.yawJitter[1], "Center")
                    local yawJitterStatic = ui.get(aaBuilder[vars.pState].yawJitterStatic)
                    local value = generate_slow_random2(0, yawJitterStatic, 0.5)
                    ui.set(refs.yawJitter[2], value)
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 8 then
                    local speed = ui.get(aaBuilder[vars.pState].sway_speed) / 2
                    local min_value = 0
                    local max_value = ui.get(aaBuilder[vars.pState].yawJitterStatic)


                    local function get_pitch_value()
                        local midpoint = (min_value + max_value) / 2
                        local amplitude = (max_value - min_value) / 2
                        return midpoint + math.sin(globals.curtime() * speed) * amplitude
                    end

                    ui.set(refs.yawJitter[1], "Center")
                    ui.set(refs.yawJitter[2], get_pitch_value())
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == "Disable" then
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], 0)
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 2 then
                    ui.set(refs.yawJitter[1], "Center")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].yawJitterStatic) + math.random(0, ui.get(aaBuilder[vars.pState].aa_ran_1)))
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 3 then
                    ui.set(refs.yawJitter[1], "Skitter")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].yawJitterStatic) + math.random(0, ui.get(aaBuilder[vars.pState].aa_ran_1)))
                elseif ui.get(aaBuilder[vars.pState].yaw_jitter) == 4 then
                    ui.set(refs.yawJitter[1], "Random")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].yawJitterStatic) + math.random(0, ui.get(aaBuilder[vars.pState].aa_ran_1)))
                else
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yawJitter[1], "Off")
                    ui.set(refs.yawJitter[2], ui.get(aaBuilder[vars.pState].yawJitterStatic) + math.random(0, ui.get(aaBuilder[vars.pState].aa_ran_1)))
                end

                if ui.get(aaBuilder[vars.pState].body_yaw) == " Jitter" then
                    ui.set(refs.bodyYaw[1], "Static")
                    ui.set(refs.bodyYaw[2], bodydel and 1 or -1)
                elseif ui.get(aaBuilder[vars.pState].body_yaw) == " Static" then
                    local value = ui.get(aaBuilder[vars.pState].aa_ran3)
                    ui.set(refs.bodyYaw[1], "Static")
                    ui.set(refs.bodyYaw[2], ui.get(aaBuilder[vars.pState].desync))
                else
                    ui.set(refs.bodyYaw[1], ui.get(aaBuilder[vars.pState].bodyYaw))
                    ui.set(refs.bodyYaw[2], ui.get(aaBuilder[vars.pState].bodyYawStatic))
                end

                ui.set(refs.fsBodyYaw, false)
            end
        elseif not ui.get(aaBuilder[vars.pState].enableState) then
            ui.set(refs.pitch[1], "Off")
            ui.set(refs.yawBase, "At targets")
            ui.set(refs.yaw[1], "180")
            ui.set(refs.yaw[2], 0)
            ui.set(refs.yawJitter[1], "Off")
            ui.set(refs.yawJitter[2], 0)
            ui.set(refs.bodyYaw[1], "Off")
            ui.set(refs.bodyYaw[2], 0)
            ui.set(refs.fsBodyYaw, false)
            --ui.set(refs.edgeYaw, false)
            ui.set(refs.roll, 0)
        end

        if ui.get(menu.aaTab.fl_custom) then
            ui.set(refs.flenabled, true)
            if ui.get(menu.aaTab.fl_mode) == "Maximum" then
                --фл
                ui.set(refs.flLimit, 14)
                ui.set(refs.flamount, "Maximum")
                ui.set(refs.flVariance, 0)
            elseif ui.get(menu.aaTab.fl_mode) == "Fluctuate" then
                ui.set(refs.flLimit, 14)
                ui.set(refs.flamount, "Fluctuate")
                ui.set(refs.flVariance, 30)
            else
                ui.set(refs.flLimit, 14)
                ui.set(refs.flamount, "Dynamic")
                ui.set(refs.flVariance, 50)
            end
        else
            ui.set(refs.flenabled, false)
        end

        local lpweapon = entity.get_player_weapon(entity.get_local_player())
        local wpnclassname = entity.get_classname(lpweapon)
        local wpnindx = bit.band(65535,entity.get_prop(lpweapon, "m_iItemDefinitionIndex"))

        -- if wpnindx ~= 36 32 30 64 1 3 63 4
    elseif (ui.get(menu.aaTab.legitAAHotkey) and cmd.in_use == 1) and aa.ignore == false then
        if entity.get_classname(entity.get_player_weapon(vars.localPlayer)) == "CC4" then 
            return 
        end
        
        local should_disable = false
        local planted_bomb = entity.get_all("CPlantedC4")[1]
    
        if planted_bomb ~= nil then
            bomb_distance = vector(entity.get_origin(vars.localPlayer)):dist(vector(entity.get_origin(planted_bomb)))
            
            if bomb_distance <= 64 and entity.get_prop(vars.localPlayer, "m_iTeamNum") == 3 then
                should_disable = true
            end
        end
    
        local pitch, yaw = client.camera_angles()
        local direct_vec = vector(func.vec_angles(pitch, yaw))
    
        local eye_pos = vector(client.eye_position())
        local fraction, ent = client.trace_line(vars.localPlayer, eye_pos.x, eye_pos.y, eye_pos.z, eye_pos.x + (direct_vec.x * 8192), eye_pos.y + (direct_vec.y * 8192), eye_pos.z + (direct_vec.z * 8192))
    
        if ent ~= nil and ent ~= -1 then
            if entity.get_classname(ent) == "CPropDoorRotating" then
                should_disable = true
            elseif entity.get_classname(ent) == "CHostage" then
                should_disable = true
            end
        end
        
        if should_disable ~= true then
            ui.set(refs.pitch[1], "Off")
            ui.set(refs.yaw[1], "180")

            ui.set(refs.yawJitter[1], "Center")
            ui.set(refs.yawJitter[2], 0)

            --ui.set(refs.yaw[2], ui.get(refs.bodyYaw) > 1 and L110(L138(vars.yaw_increment_spin), -180, 180))
            local value = L110(L138(180 + (side == 1 and (ui.get(aaBuilder[vars.pState].yawLeft) - math.random(0, ui.get(aaBuilder[vars.pState].randomization)) - math.random(0, ui.get(aaBuilder[vars.pState].aa_ran2))) or (ui.get(aaBuilder[vars.pState].yawRight) + math.random(0, ui.get(aaBuilder[vars.pState].randomization)) + ui.get(aaBuilder[vars.pState].aa_ran2)))), -180, 180)

            ui.set(refs.yaw[2], value)
            
            ui.set(refs.bodyYaw[1], "Static")
            ui.set(refs.bodyYaw[2], bodydel and 1 or -1)
            ui.set(refs.fsBodyYaw, true)
            ui.set(refs.edgeYaw, false)
            ui.set(refs.roll, 0)
            ui.set(refs.yawBase, "Local view")
            ui.set(refs.freeStand[1], false)
            ui.set(refs.freeStand[2], "On hotkey")
            cmd.in_use = 0
            cmd.roll = 0
        end
    end

    ui.set(menu.aaTab.m_left, "On hotkey")
    ui.set(menu.aaTab.m_right, "On hotkey")
    ui.set(menu.aaTab.m_forward, "On hotkey")
    if vars.last_press + 0.22 < globals.curtime() then
        if vars.aa_dir == 0 then
            if ui.get(menu.aaTab.m_left) then
                vars.aa_dir = 1
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_right) then
                vars.aa_dir = 2
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_forward) then
                vars.aa_dir = 3
                vars.last_press = globals.curtime()
            end
        elseif vars.aa_dir == 1 then
            if ui.get(menu.aaTab.m_right) then
                vars.aa_dir = 2
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_forward) then
                vars.aa_dir = 3
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_left) then
                vars.aa_dir = 0
                vars.last_press = globals.curtime()
            end
        elseif vars.aa_dir == 2 then
            if ui.get(menu.aaTab.m_left) then
                vars.aa_dir = 1
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_forward) then
                vars.aa_dir = 3
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_right) then
                vars.aa_dir = 0
                vars.last_press = globals.curtime()
            end
        elseif vars.aa_dir == 3 then
            if ui.get(menu.aaTab.m_forward) then
                vars.aa_dir = 0
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_left) then
                vars.aa_dir = 1
                vars.last_press = globals.curtime()
            elseif ui.get(menu.aaTab.m_right) then
                vars.aa_dir = 2
                vars.last_press = globals.curtime()
            end
        end
    end
    if vars.aa_dir == 1 or vars.aa_dir == 2 or vars.aa_dir == 3 then
        if vars.aa_dir == 1 then
            ui.set(refs.yawBase, "Local view")
            ui.set(refs.yaw[1], "180")
            if ui.get(menu.aaTab.cst_mn_yaw) then
                ui.set(refs.yaw[2], ui.get(menu.aaTab.m_left_yaw))
            else
                ui.set(refs.yaw[2], -90)
            end
            if ui.get(menu.aaTab.static_m) then
                ui.set(refs.yawJitter[1], "Center")
                ui.set(refs.yawJitter[2], 0)
                ui.set(refs.bodyYaw[1], "Off")
            end
            ui.set(refs.pitch[1], "Down")
            aa.ignore = true
        elseif vars.aa_dir == 2 then
            ui.set(refs.yawBase, "local view")
            ui.set(refs.yaw[1], "180")
            if ui.get(menu.aaTab.cst_mn_yaw) then
                ui.set(refs.yaw[2], ui.get(menu.aaTab.m_right_yaw))
            else
                ui.set(refs.yaw[2], 90)
            end
            if ui.get(menu.aaTab.static_m) then
                ui.set(refs.yawJitter[1], "Center")
                ui.set(refs.yawJitter[2], 0)
                ui.set(refs.bodyYaw[1], "Off")
            end
            ui.set(refs.pitch[1], "Down")
            aa.ignore = true
        elseif vars.aa_dir == 3 then
            ui.set(refs.yawBase, "local view")
            ui.set(refs.yaw[1], "180")
            ui.set(refs.yaw[2], 180)
            if ui.get(menu.aaTab.static_m) then
                ui.set(refs.yawJitter[1], "Center")
                ui.set(refs.yawJitter[2], 0)
                ui.set(refs.bodyYaw[1], "Off")
            end
            ui.set(refs.pitch[1], "Down")
            aa.ignore = true
        end
        if ui.get(menu.aaTab.flick_m) then
            cmd.force_defensive = is_m_d() and not is_vulnerable()
            if is_defensive_active() then
                if vars.aa_dir == 1 then
                    ui.set(refs.yawBase, "local view")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], 90)
                    if ui.get(menu.aaTab.static_m) then
                        ui.set(refs.yawJitter[1], "Center")
                        ui.set(refs.yawJitter[2], 0)
                        ui.set(refs.bodyYaw[1], "Off")
                    end
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], 0)
                    aa.ignore = true
                elseif vars.aa_dir == 2 then
                    ui.set(refs.yawBase, "local view")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], -90)
                    if ui.get(menu.aaTab.static_m) then
                        ui.set(refs.yawJitter[1], "Center")
                        ui.set(refs.yawJitter[2], 0)
                        ui.set(refs.bodyYaw[1], "Off")
                    end
                    ui.set(refs.pitch[1], "Custom")
                    ui.set(refs.pitch[2], 0)
                    aa.ignore = true
                end
            end
        end
    end

    if ui.get(menu.aaTab.flick_fs) and isFs1 and not ui.get(aaBuilder[10].enableState) then 
        cmd.force_defensive = true
        if is_defensive_active() then
            cmd.yaw = abstoflick + 180
            cmd.pitch = 1080
            ui.set(refs.pitch[1], "Custom")
            ui.set(refs.pitch[2], 0)
            ui.set(refs.yawBase, "Local view")
            ui.set(refs.yaw[1], "180")
            ui.set(refs.yaw[2], clamper(abstoflick))
            ui.set(refs.yawJitter[1], "Offset")
            ui.set(refs.yawJitter[2], 0)
            ui.set(refs.bodyYaw[1], "Static")
            ui.set(refs.bodyYaw[2], 0)
        else
            abstoflick = antiaim_funcs.get_abs_yaw()
            ui.set(refs.pitch[1], "Minimal")
            ui.set(refs.yawBase, "At targets")
            ui.set(refs.yaw[1], "180")
            ui.set(refs.yaw[2], 0)
            ui.set(refs.yawJitter[1], "Offset")
            ui.set(refs.yawJitter[2], 0)
            ui.set(refs.bodyYaw[1], "Static")
            ui.set(refs.bodyYaw[2], 0)
        end
    end

    if ui.get(menu.miscTab.bomb_fix) then
        if cmd.in_use == 0 then
            return
        end
        local me = entity.get_local_player()
        if me == nil then
            return
        end
        local m_bInBombZone = entity.get_prop(me, "m_bInBombZone")
        if m_bInBombZone == 1 then
            cmd.in_use = 0
        end
    end
    

    local self = entity.get_local_player()

    local players = entity.get_players(true)
    local eye_x, eye_y, eye_z = client.eye_position()
    returnthat = false 
    if ui.get(menu.aaTab.anti_knife) ~= false then
        if players ~= nil then
            for i, enemy in pairs(players) do
                local head_x, head_y, head_z = entity.hitbox_position(players[i], 5)
                local wx, wy = renderer.world_to_screen(head_x, head_y, head_z)
                local fractions, entindex_hit = client.trace_line(self, eye_x, eye_y, eye_z, head_x, head_y, head_z)
    
                if ui.get(menu.aaTab.avoid_dist) >= vector(entity.get_prop(enemy, 'm_vecOrigin')):dist(vector(entity.get_prop(self, 'm_vecOrigin'))) and entity.is_alive(enemy) and entity.get_player_weapon(enemy) ~= nil and entity.get_classname(entity.get_player_weapon(enemy)) == 'CKnife' and (entindex_hit == players[i] or fractions == 1) and not entity.is_dormant(players[i]) then
                    ui.set(refs.pitch[1], "Down")
                    ui.set(refs.yaw[1], "180")
                    ui.set(refs.yaw[2], 180)
                    ui.set(refs.yawBase, "At targets")
                    ui.set(refs.bodyYaw[1], "Static")
                    ui.set(refs.bodyYaw[2], 1)
                    ui.set(refs.yawJitter[1], "Off")

                    aa.ignore = true
                    ae = false
                    returnthat = true
                else 
                    ae = true
                    aa.ignore = false
                end
            end
        end
    end

    if ui.get(menu.aaTab.spin_exploit) then
        local all_dead, enemy_found = true, false
        for i = 1, globals.maxplayers() do
            if entity.get_prop(entity.get_player_resource(), 'm_bConnected', i) == 1 and entity.is_enemy(i) then
                enemy_found = true
                if entity.is_alive(i) then all_dead = false break end
            end
        end
        if not enemy_found or all_dead then set_spin(cmd) else aa.ignore = false end
    end
end

function map_cashe()
    if ui.get(menu.miscTab.map_cashe) then
        if globals.tickcount() % 120 < 3 then
            client.exec("r_cleardecals")
        end
    end
end
fastladder = function(cmd)
    if not ui.get(menu.miscTab.fast_ladder) then return end
    local me = entity.get_local_player()
    if not me then return end

    local move_type = entity.get_prop(me, 'm_MoveType')
    local weapon = entity.get_player_weapon(me)
    local throw = entity.get_prop(weapon, 'm_fThrowTime')

    if move_type ~= 9 then
        return
    end

    if weapon == nil then
        return
    end

    if throw ~= nil and throw ~= 0 then
        return
    end

    if cmd.forwardmove > 0 then
        if cmd.pitch < 45 then
            cmd.pitch = 89
            cmd.in_moveright = 1
            cmd.in_moveleft = 0
            cmd.in_forward = 0
            cmd.in_back = 1

            if cmd.sidemove == 0 then
                cmd.yaw = cmd.yaw + 90
            end

            if cmd.sidemove < 0 then
                cmd.yaw = cmd.yaw + 150
            end

            if cmd.sidemove > 0 then
                cmd.yaw = cmd.yaw + 30
            end
        end
    elseif cmd.forwardmove < 0 then
        cmd.pitch = 89
        cmd.in_moveleft = 1
        cmd.in_moveright = 0
        cmd.in_forward = 1
        cmd.in_back = 0

        if cmd.sidemove == 0 then
            cmd.yaw = cmd.yaw + 90
        end

        if cmd.sidemove > 0 then
            cmd.yaw = cmd.yaw + 150
        end

        if cmd.sidemove < 0 then
            cmd.yaw = cmd.yaw + 30
        end
    end
end
-- anti-brute анти

function GetClosestPoint(A, B, P)
    a_to_p = { P[1] - A[1], P[2] - A[2] }
    a_to_b = { B[1] - A[1], B[2] - A[2] }

    atb2 = a_to_b[1]^2 + a_to_b[2]^2

    atp_dot_atb = a_to_p[1]*a_to_b[1] + a_to_p[2]*a_to_b[2]
    t = atp_dot_atb / atb2
    
    return { A[1] + a_to_b[1]*t, A[2] + a_to_b[2]*t }
end


local nna = true
--брут
event_callback("bullet_impact", function(cmd)
    if ui.get(aaBuilder[vars.pState].aa_brute_en) == false then return end
    
    if not entity.is_alive(entity.get_local_player()) then return end
    local ent = client.userid_to_entindex(cmd.userid)
    if ent ~= client.current_threat() then return end
    if entity.is_dormant(ent) or not entity.is_enemy(ent) then return end

    local ent_origin = { entity.get_prop(ent, "m_vecOrigin") }
    ent_origin[3] = ent_origin[3] + entity.get_prop(ent, "m_vecViewOffset[2]")
    local local_head = { entity.hitbox_position(entity.get_local_player(), 0) }
    local closest = GetClosestPoint(ent_origin, { cmd.x, cmd.y, cmd.z }, local_head)
    local delta = { local_head[1]-closest[1], local_head[2]-closest[2] }
    local delta_2d = math.sqrt(delta[1]^2+delta[2]^2)

    if bruteforce then return end
    if math.abs(delta_2d) <= 60 and math.abs(delta_2d) >= 5 then
        if cmd.damaged then return end
        lastmiss = globals.curtime()
        bruteforce = true
        shot_time = globals.realtime()
        if nna then
            notif:new(3, "Anti-bruteforce switched", 255, 255, 255)
        end
        nna = false
    end
end)

function Returner()
    brut3 = true
    return brut3
end

event_callback("setup_command", main_aa)

client.set_event_callback("setup_command", function(cmd)
    if bruteforce and ui.get(aaBuilder[vars.pState].aa_brute_en) then
        client.set_event_callback("paint_ui", Returner)
        bruteforce = false
        bruteforce_reset = false
        set_brute = true
        aa.ignore = true
    else
        if shot_time + ui.get(aaBuilder[vars.pState].aa_brute_time) < globals.realtime() or not ui.get(aaBuilder[vars.pState].aa_brute_en) then
            client.unset_event_callback("paint_ui", Returner)
            set_brute = false
            brut3 = false
            bruteforce_reset = true
            aa.ignore = false
            nna = true
        end
    end
    return shot_time
end)

client.set_event_callback("setup_command", function(cmd)
    if ui.get(aaBuilder[vars.pState].aa_brute_en) then
        if set_brute then
            ui.set(aaBuilder[vars.pState].aa_ran_1, ui.get(aaBuilder[vars.pState].aa_brute_range))
            ui.set(aaBuilder[vars.pState].aa_ran, ui.get(aaBuilder[vars.pState].aa_brute_dl_tick))
            ui.set(aaBuilder[vars.pState].aa_ran2, ui.get(aaBuilder[vars.pState].randomization_brute))
            --ui.set(aaBuilder[vars.pState].aa_ran3, ui.get(aaBuilder[vars.pState].aa_brute_b_yaw))
        else
            ui.set(aaBuilder[vars.pState].aa_ran3, ui.get(aaBuilder[vars.pState].bodyYawStatic))
            ui.set(aaBuilder[vars.pState].aa_ran2, 0)
            ui.set(aaBuilder[vars.pState].aa_ran_1, 0)
            ui.set(aaBuilder[vars.pState].aa_ran, 0)
        end
    end
end)

function flick_test(cmd)
    local local_player = entity.get_local_player()
    if not local_player or not entity.is_alive(local_player) then return end

    if ui.get(menu.aaTab.flick) and vars.pState == 4 then
        aa.ignore = true
        ui.set(refs.pitch[1], "Down")
        ui.set(refs.yaw[1], "180")
        ui.set(refs.yaw[2], 0)
        ui.set(refs.yawJitter[1], "Offset")
        ui.set(refs.yawJitter[2], 112)
        ui.set(refs.bodyYaw[1], "Off")
        ui.set(refs.bodyYaw[2], 0)
    end
end

    
local hitboxes = {
    ind = {
        1, 
        2, 
        3, 
        4, 
        5, 
        6, 
        7
    }, 

    name = {
        "head", 
        "chest", 
        "stomach", 
        "left_arm", 
        "right_arm", 
        "left_leg", 
        "right_leg"
    }
}

local bot_data = {
    start_position = vector(0,0,0),
    cache_eye_left = vector(0,0,0), 
    cache_eye_right = vector(0,0,0),
    left_trace_active,
    right_trace_active,
    peekbot_active,
    calculate_wall_dist_left = 0, 
    calculate_wall_dist_right = 0,
    set_location = true,
    shot_fired = false,
    reload_timer = 0,
    reached_max_distance = false,
    should_return = false,
    tracer_position,
    lerp_distance = 0
}


local ground_ticks = 0
event_callback("pre_render", function(cmd)
    
    if not entity.get_local_player() then return end
    local flags = entity.get_prop(entity.get_local_player(), "m_fFlags")
    ground_ticks = bit.band(flags, 1) == 0 and 0 or (ground_ticks < 5 and ground_ticks + 1 or ground_ticks)
    local self = entity.get_local_player()
    local self_index = c_ent.new(self)
    local self_anim_state = self_index:get_anim_state()
    local onground = bit.band(flags, 1) ~= 0
    local x_velocity = entity.get_prop(self, "m_vecVelocity[0]")
    local function jitter_value()
        local current_time = globals.tickcount() / 10
        local jitter_frequency = 7
        local jitter_factor = 0.5 + 0.5 * math.sin(current_time * jitter_frequency)
        return jitter_factor * 100
    end

    local me = entity.get_local_player()
    if ui.get(menu.visualsTab.ap_move) == "Jitter" and onground then
        ui.set(refs.legMovement, globals.tickcount() % 4 > 1 and "Off" or "Always slide")
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 1, tickcount() % 4 > 1 and 0.5 or 1)

    elseif ui.get(menu.visualsTab.ap_move) == "Static" and onground then
        ui.set(refs.legMovement, "Always slide")
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 1, 0)
    elseif ui.get(menu.visualsTab.ap_move) == "Walking" and onground and math.abs(x_velocity) >= 3 then
        ui.set(refs.legMovement, "Never slide")
        if not legsSaved then
            legsSaved = ui.get(refs.legMovement)
        end
        ui.set_visible(refs.legMovement, false)
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 0, 7)
        me = c_ent.get_local_player()
        flags = me:get_prop("m_fFlags")
        local onground = bit.band(flags, 1) ~= 0
        if onground then
            my_animlayer = me:get_anim_overlay(6)
            my_animlayer.weight = 1
            my_animlayer.cycle = globals.realtime() * 0.5 % 1
        end
    elseif ui.get(menu.visualsTab.ap_move) == "Kangaroo" and onground then
        ui.set(refs.legMovement, "Always slide")
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", client.random_float(0.8, 1), 0)
    elseif ui.get(menu.visualsTab.ap_move) == "Earthquake" and onground then
        local self_anim_overlay = self_index:get_anim_overlay(12)
        if not self_anim_overlay then return end

        if globals.tickcount() % 90 > 1 then
            self_anim_overlay.weight = jitter_value() / 100
        end
    end

    if ui.get(menu.visualsTab.ap_air) == "Force falling" and not onground then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 1, 6) 
    elseif ui.get(menu.visualsTab.ap_air) == "Walking" and not onground then
        ui.set(refs.legMovement, "Never slide")
        if not legsSaved then
            legsSaved = ui.get(refs.legMovement)
        end
        ui.set_visible(refs.legMovement, false)
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 0, 7)
        me = c_ent.get_local_player()
        flags = me:get_prop("m_fFlags")
        onground = bit.band(flags, 1) ~= 0
        if not onground then
            my_animlayer = me:get_anim_overlay(6)
            my_animlayer.weight = 1
            my_animlayer.cycle = globals.realtime() * 0.5 % 1
        end
    elseif ui.get(menu.visualsTab.ap_air) == "Kangaroo" and not onground then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(0, 2)/2, 2)
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(0, 2)/2, 1)
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(0, 2)/2, 2)
    elseif ui.get(menu.visualsTab.ap_air) == "Earthquake" and not onground then
        local self_anim_overlay = self_index:get_anim_overlay(12)
        if not self_anim_overlay then return end

        if globals.tickcount() % 90 > 1 then
            self_anim_overlay.weight = jitter_value() / 100
        end
    elseif ui.get(menu.visualsTab.ap_air) == "Jitter" and not onground then
        entity.set_prop(entity.get_local_player(), 'm_flPoseParameter', math.random(0.5, 1.0), 6)
    end


    if ui.get(menu.visualsTab.a_pitch) then
        ground_ticks = bit.band(flags, 1) == 1 and ground_ticks + 1 or 0

        if ground_ticks > 5 and ground_ticks < 80 then
            entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 0.5, 12)
        end
    end

    if ui.get(menu.visualsTab.a_body) then
        local self_anim_overlay = self_index:get_anim_overlay(12)
        if not self_anim_overlay then
            return
        end

        local x_velocity = entity.get_prop(self, "m_vecVelocity[0]")
        if math.abs(x_velocity) >= 3 then
            self_anim_overlay.weight = 1
        end
    end

    if ui.get(menu.visualsTab.a_legacy) then
        local isSlow = ui.get(refs.slow[1]) and ui.get(refs.slow[2])
        local self_anim_overlay = self_index:get_anim_overlay(6)
        if not self_anim_overlay then
            return
        end

        if isSlow then
            self_anim_overlay.weight = 0
        end
    end

end)



local alpha, scopedFraction, acatelScoped, dtModifier, barMoveY, activeFraction, inactiveFraction, defensiveFraction, hideFraction, hideInactiveFraction, dtPos, osPos, mainIndClr, dtClr, chargeClr, chargeInd, psClr, dtInd, qpInd, fdInd, spInd, baInd, fsInd, osInd, psInd, wAlpha, interval = 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, {y = 0}, {y = 0}, {r = 0, g = 0, b = 0, a = 0}, {r = 0, g = 0, b = 0, a = 0}, {r = 0, g = 0, b = 0, a = 0}, {w = 0, x = 0, y = 25}, {r = 0, g = 0, b = 0, a = 0}, {w = 0, x = 0, y = 25}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25, a = 0}, {w = 0, x = 0, y = 25}, 0, 0

local current_damage = 0
local target_damage = 0
local anim_start_time = 0
local anim_duration = 1
local current_alpha = 255
local target_alpha = 255


local last_fps = 0
local update_interval = 80
local frame_count = 0

function get_fps()
    frame_count = frame_count + 1

    if frame_count >= update_interval then
        last_fps = 1.0 / globals.frametime()
        frame_count = 0
    end

    return last_fps
end

function get_rate()
    return 1.0 / globals.tickinterval()
end

local glow_time = 0
function get_glow_color()
    glow_time = glow_time + globals.frametime() * 2
    local r = math.floor(128 + 127 * math.sin(glow_time))
    local g = math.floor(128 + 127 * math.sin(glow_time + 2))
    local b = math.floor(128 + 127 * math.sin(glow_time + 4))
    return r, g, b
end

function round_rect(x, y, w, h, radius, color)
    if color[4] <= 0 then
        return
    end

    renderer.rectangle(x, y + radius, radius, h - radius * 2, color[1], color[2], color[3], color[4])
    renderer.rectangle(x + radius, y, w - radius * 2, radius, color[1], color[2], color[3], color[4])
    renderer.rectangle(x + radius, y + h - radius, w - radius * 2, radius, color[1], color[2], color[3], color[4])
    renderer.rectangle(x + w - radius, y + radius, radius, h - radius * 2, color[1], color[2], color[3], color[4])

    renderer.rectangle(x + radius, y + radius, w - radius * 2, h - radius * 2, color[1], color[2], color[3], color[4])

    renderer.circle(x + radius, y + radius, color[1], color[2], color[3], color[4], radius, 180, 0.25)
    renderer.circle(x + radius, y + h - radius, color[1], color[2], color[3], color[4], radius, 270, 0.25)
    renderer.circle(x + w - radius, y + radius, color[1], color[2], color[3], color[4], radius, 90, 0.25)
    renderer.circle(x + w - radius, y + h - radius, color[1], color[2], color[3], color[4], radius, 0, 0.25)
end

function blur_line(x, y, w, h, r, g, b, a, blur_strength)
    blur_strength = 0.2
    local blur_alpha = math.floor(a / (blur_strength * 2))

    for i = -blur_strength, blur_strength do
        for j = -blur_strength, blur_strength do
            if i ~= 0 or j ~= 0 then
                renderer.rectangle(x + i, y + j, w, h, r, g, b, blur_alpha)
            end
        end
    end

    renderer.rectangle(x, y, w, h, r, g, b, a)
end

dragg = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if q ~= s or r ~= t then
                    self:set(s, t)
                end
                return s, t
            end,
            set = function(self, q, r)
                local j, k = client.screen_size()
                ui.set(self.x_reference, q / j * self.res)
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local j, k = client.screen_size()
                return ui.get(self.x_reference) / self.res * j, ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local j, k = client.screen_size()
        local y = ui.new_slider('LUA', 'A', u .. ' window position', 0, x, v / j * x)
        local z = ui.new_slider('LUA', 'A', '\n' .. u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(y, false)
        ui.set_visible(z, false)
        return setmetatable({ name = u, x_reference = y, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                q, r = q + d - f, r + e - g
                if not D then
                    q = math.max(0, math.min(j - A, q))
                    r = math.max(0, math.min(k - B, r))
                end
            end
        end

        table.insert(l, { q, r, A, B })
        return q, r, A, B
    end

    return a
end)()

dragg2 = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if q ~= s or r ~= t then
                    self:set(s, t)
                end
                return s, t
            end,
            set = function(self, q, r)
                local j, k = client.screen_size()
                ui.set(self.x_reference, q / j * self.res)
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local j, k = client.screen_size()
                return ui.get(self.x_reference) / self.res * j, ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local j, k = client.screen_size()
        local y = ui.new_slider('LUA', 'A', u .. ' window position', 0, x, v / j * x)
        local z = ui.new_slider('LUA', 'A', '\n' .. u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(y, false)
        ui.set_visible(z, false)
        return setmetatable({ name = u, x_reference = y, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                q, r = q + d - f, r + e - g
                if not D then
                    q = math.max(0, math.min(j - A, q))
                    r = math.max(0, math.min(k - B, r))
                end
            end
        end

        table.insert(l, { q, r, A, B })
        return q, r, A, B
    end

    return a
end)()

dragg3 = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if q ~= s or r ~= t then
                    self:set(s, t)
                end
                return s, t
            end,
            set = function(self, q, r)
                local j, k = client.screen_size()
                ui.set(self.x_reference, q / j * self.res)
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local j, k = client.screen_size()
                return ui.get(self.x_reference) / self.res * j, ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local j, k = client.screen_size()
        local y = ui.new_slider('LUA', 'A', u .. ' window position', 0, x, v / j * x)
        local z = ui.new_slider('LUA', 'A', '\n' .. u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(y, false)
        ui.set_visible(z, false)
        return setmetatable({ name = u, x_reference = y, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                q, r = q + d - f, r + e - g
                if not D then
                    q = math.max(0, math.min(j - A, q))
                    r = math.max(0, math.min(k - B, r))
                end
            end
        end

        table.insert(l, { q, r, A, B })
        return q, r, A, B
    end

    return a
end)()

watermarkDraggable = dragg.new("Watermark", hud_x+hud_x - 320, hud_y -  hud_y + 30)
fpsDraggable = dragg2.new("FPS", hud_x+hud_x - 210, hud_y - hud_y + 30)
timeDraggable = dragg3.new("Time", hud_x+hud_x - 106, hud_y - hud_y + 30)

ind_anim_scope = 0
ind_anim_scope_alpha = 1

cru_hc = 0

last_hc = 0
update_interval2 = 10
frame_count2 = 0

function get_hc()
    frame_count2 = frame_count2 + 1

    if frame_count2 >= update_interval2 then
        last_hc = math.floor(ui.get(refs.hitChance))
        frame_count2 = 0
    end

    return last_hc
end
local watermark_data = {
    h = 0,
    opacity = 0
}
ease = require("gamesense/easing")
images = require("gamesense/images")

dragg3 = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if r ~= t then
                    self:set(t)
                end
                return t
            end,
            set = function(self, r)
                local _, k = client.screen_size()
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local _, k = client.screen_size()
                return ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local _, k = client.screen_size()
        local z = ui.new_slider('LUA', 'A', u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(z, false)
        return setmetatable({ name = u, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        local s, t = q, r
        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                t = r + e - g
                if not D then
                    t = math.max(0, math.min(k - B, t))
                end
            end
        end

        table.insert(l, { s, t, A, B })
        return s, t, A, B
    end

    return a
end)()

local current_y = 0
local target_y = 0
local y_anim_speed = 8

event_callback("paint", function()
    if ui.get(menu.visualsTab.cros_ind) then
        local fraction = func.easeInOut(ind_anim_scope)
        local fraction_alpha = func.easeInOut(ind_anim_scope_alpha)
        X, Y = client.screen_size()
        
        local isOs = ui.get(refs.os[1]) and ui.get(refs.os[2])
        local isFd = ui.get(refs.fakeDuck)
        local isDt = ui.get(refs.dt[1]) and ui.get(refs.dt[2])
        
        local local_player = entity.get_local_player()
        local is_scoped = entity.get_prop(local_player, "m_bIsScoped") == 1
        
        local scope_offset_value = 50
        local scope_anim_speed = 8
        local vertical_spacing = 10
        
        scope_offset = scope_offset or 0
        scope_alignment = scope_alignment or 0
        
        local target_offset = is_scoped and scope_offset_value or 0
        local target_alignment = is_scoped and 1 or 0
        
        scope_offset = math.lerp(scope_offset, target_offset, globals.frametime() * scope_anim_speed)
        scope_alignment = math.lerp(scope_alignment, target_alignment, globals.frametime() * scope_anim_speed)
        
        target_y = Y/2 + ui.get(menu.visualsTab.cros_y)
        
        current_y = math.lerp(current_y, target_y, globals.frametime() * y_anim_speed)

        x = X/2
        r, g, b = ui.get(calar)

        local main_text_x = X / 2 + (vector(renderer.measure_text("c-", "anoflow nebula")).x / 2 + 5) * fraction + scope_offset
        local main_text_y = current_y + 8
        
        renderer.text(
            main_text_x, 
            main_text_y, 
            r, g, b, 
            255 * fraction_alpha, 
            "c-", 
            0, 
            string.upper("anoflow  " .. text_fade_animation(5, r, g, b, 255 * fraction_alpha, "nebula"))
        )

        local m_indicators = {
            {text = "DT", color = isDt == true and {r, g, b} or {92, 92, 92}},
            {text = "OS", color = isOs == true and {r, g, b} or {92, 92, 92}},
            {text = "FS", color = ui.get(refs.freeStand[2]) == true and {r, g, b} or {92, 92, 92}},
            {text = "FD", color = isFd == true and {r, g, b} or {92, 92, 92}}
        }
        
        local baim = ui.get(refs.forceBaim)
        local b_indicators = {
            {text = "BAIM", color = baim and {r, g, b} or {92, 92, 92}},
            {text = "      SP", color = ui.get(refs.safePoint) and {r, g, b} or {92, 92, 92}}
        }
        
        local get_hc2 = math.lerp(math.floor(get_hc()), math.floor(ui.get(refs.hitChance)), globals.frametime() * 24)
        local i_indicators = {
            {text = "HC: " .. math.floor(get_hc2), color = {r, g, b}}
        }
        
        local base_x = X / 2 + scope_offset
        local scoped_x = base_x - 20
        
        local current_y_ind = main_text_y + 20

        for i, v in pairs(m_indicators) do
            local normal_x = X / 2 - 30 + i * 12 + 23 * fraction
            local x_pos = math.lerp(normal_x, scoped_x, scope_alignment)
            
            r, g, b = unpack(v.color)
            renderer.text(
                x_pos, 
                math.lerp(current_y + 17, current_y_ind, scope_alignment),
                r, g, b, 
                220 * fraction_alpha, 
                "c-", 
                0, 
                v.text
            )
            
            if scope_alignment > 0.5 then
                current_y_ind = current_y_ind + vertical_spacing
            end
        end
        
        for i, v in pairs(b_indicators) do
            local normal_x = X / 2 - 20 + i * 12 + 23 * fraction
            local x_pos = math.lerp(normal_x, scoped_x, scope_alignment)
            
            r, g, b = unpack(v.color)
            renderer.text(
                x_pos, 
                math.lerp(current_y + 24, current_y_ind, scope_alignment),
                r, g, b, 
                220,
                "c-", 
                0, 
                v.text
            )
            
            if scope_alignment > 0.5 then
                current_y_ind = current_y_ind + vertical_spacing
            end
        end

        for i, v in pairs(i_indicators) do
            local normal_x = X / 2 - 13 + i * 12 + 31 * fraction
            local x_pos = math.lerp(normal_x, scoped_x, scope_alignment)
            
            r, g, b = unpack(v.color)
            renderer.text(
                x_pos, 
                math.lerp(current_y + 31, current_y_ind, scope_alignment),
                r, g, b, 
                220,
                "c-", 
                0, 
                v.text
            )
        end
    end
    
    local sizeX, sizeY = client.screen_size()

    if ui.get(menu.visualsTab.min_ind_mode) ~= "-" and entity.get_classname(weapon) ~= "CKnife"  then
        local new_damage = ui.get(refs.minimum_damage)
        if ui.get(refs.minimum_damage_override[1]) and ui.get(refs.minimum_damage_override[2]) then
            new_damage = ui.get(refs.minimum_damage_override[3])
        end

        if new_damage ~= target_damage then
            target_damage = new_damage
            anim_start_time = globals.realtime()
            if ui.get(refs.minimum_damage_override[1]) and ui.get(refs.minimum_damage_override[2]) then
                target_alpha = 255
            else
                target_alpha = 100 
            end
        end

        local progress = (globals.realtime() - anim_start_time) / anim_duration
        progress = math.min(progress, 1)

        current_damage = lerp(current_damage, target_damage, progress)

        current_alpha = lerp(current_alpha, target_alpha, progress)

        if progress >= 1 then
            current_damage = target_damage
            current_alpha = target_alpha
        end

        if ui.get(menu.visualsTab.min_ind) and ui.get(menu.visualsTab.min_ind_mode) == "Always" then
            if ui.get(menu.visualsTab.min_text) == "Pixel" then
                renderer.text(sizeX / 2 + 5, sizeY / 2 - 7, 255, 255, 255, math.floor(current_alpha), "-cd", 0, math.floor(current_damage + 0.5))
            elseif ui.get(menu.visualsTab.min_text) == "Default" then
                renderer.text(sizeX / 2 + 3, sizeY / 2 - 15, 255, 255, 255, math.floor(current_alpha), "", 0, math.floor(current_damage + 0.5))
            end
        elseif ui.get(menu.visualsTab.min_ind) and ui.get(refs.minimum_damage_override[1]) and ui.get(refs.minimum_damage_override[2]) and ui.get(menu.visualsTab.min_ind_mode) == "Bind" then
            if ui.get(menu.visualsTab.min_text) == "Pixel" then
                renderer.text(sizeX / 2 + 3, sizeY / 2 - 7, 255, 255, 255, math.floor(current_alpha), "-cd", 0, math.floor(current_damage + 0.5))
            elseif ui.get(menu.visualsTab.min_text) == "Default" then
                renderer.text(sizeX / 2 + 3, sizeY / 2 - 15, 255, 255, 255, math.floor(current_alpha), "", 0, math.floor(current_damage + 0.5))
            end
        end
    else
        anim_start_time = 0
        current_damage = 0
        target_damage = 0
    end

    if ui.get(menu.visualsTab.wtm_enable) then
        if ui.get(menu.visualsTab.wtm_style) == "Default" then
            local clr_r, clr_g, clr_b = ui.get(calar)
        
            local watermaro4ka = animate_text(globals.curtime(), lua_name .. " ~ nebula", clr_r, clr_g, clr_b, 255)
            renderer.text(sizeX/2 - renderer.measure_text("db", lua_name .. " nebula")/2, sizeY - 20, 155, 0, 0, 0, "db", nil, unpack(watermaro4ka))
        elseif ui.get(menu.visualsTab.wtm_style) == "Glowed" then
            local col1, col2, col3, col4 = ui.get(calar)
            local sizeX, sizeY = client.screen_size()
            
            local nick = nick_name:sub(1, 8)
            local fps_text = math.floor(get_fps())
            local ping_text = math.floor(math.min(1000, client.latency() * 1000)) .. "ms"
            local tickrate_text = math.floor(get_rate()) .. "t"
            
            local font = "Light"
            local text_padding = 5
            
            local icon_nick_w = renderer.measure_text(font, " ")
            local nick_w = renderer.measure_text(font, nick)
            local icon_fps_w = renderer.measure_text(font, " ")
            local fps_text_w = renderer.measure_text(font, fps_text)
            local icon_ping_w = renderer.measure_text(font, " ")
            local ping_text_w = renderer.measure_text(font, ping_text)
            local icon_tick_w = renderer.measure_text(font, " ")
            local tick_text_w = renderer.measure_text(font, tickrate_text)
            
            local total_width = 
                icon_nick_w + nick_w + text_padding +
                icon_fps_w + fps_text_w + text_padding +
                icon_ping_w + ping_text_w + text_padding +
                icon_tick_w + tick_text_w + 10
            
            local panelY = sizeY / 2 + sizeY / 2 - 30
            
            local targetX = sizeX / 2 - total_width / 2
            local currentX = currentX or targetX
            currentX = currentX + (targetX - currentX) * 0.1
            
            container_glow(currentX, panelY, total_width, 20, col1, col2, col3, col4, 1, col1, col2, col3)
            
            renderer.text(currentX + 5, panelY + 3, col1, col2, col3, 255, font, 0, " ")
            renderer.text(currentX + 5 + icon_nick_w, panelY + 3.5, 255, 255, 255, 255, font, 0, nick)
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding, panelY + 3, col1, col2, col3, 255, font, 0, " ")
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding + icon_fps_w, panelY + 3.5, 255, 255, 255, 255, font, 0, fps_text)
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding + icon_fps_w + fps_text_w + text_padding, panelY + 3, col1, col2, col3, 255, font, 0, " ")
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding + icon_fps_w + fps_text_w + text_padding + icon_ping_w, panelY + 3.5, 255, 255, 255, 255, font, 0, ping_text)
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding + icon_fps_w + fps_text_w + text_padding + icon_ping_w + ping_text_w + text_padding, panelY + 3, col1, col2, col3, 255, font, 0, " ")
            renderer.text(currentX + 5 + icon_nick_w + nick_w + text_padding + icon_fps_w + fps_text_w + text_padding + icon_ping_w + ping_text_w + text_padding + icon_tick_w, panelY + 3.5, 255, 255, 255, 255, font, 0, tickrate_text)        
        elseif ui.get(menu.visualsTab.wtm_style) == "Modified" then
            local col1, col2, col3, col4 = ui.get(calar)
            local screen_x, screen_y = client.screen_size()
            local hud_x = screen_x / 2
            local hud_y = screen_y / 2
            local sys_h, sys_m = client.system_time()
            local time = string.format("%02d:%02d", sys_h, sys_m)
    
            local wmX, wmY = watermarkDraggable:get()
            local fpsX, fpsY = fpsDraggable:get()
            local timeX, timeY = timeDraggable:get()
            watermarkDraggable:drag(100, 20)
            fpsDraggable:drag(100, 20)
            timeDraggable:drag(40, 20)
    
            round_rect(wmX, wmY, 100, 20, 8, {10, 10, 10, 150})
            blur_line(wmX + 7, wmY + 20, 90, 2, col1, col2, col3, 255, 5)
            renderer.text(wmX + 10, wmY + 4, 255, 255, 255, 255, nil, 0, "Anoflow /")
            renderer.text(wmX + 55, wmY + 4, col1, col2, col3, 255, nil, 0, text_fade_animation(3, col1, col2, col3, 255, "Nebula"))

            round_rect(fpsX, fpsY, 100, 20, 8, {10, 10, 10, 150})
            blur_line(fpsX + 5, fpsY + 20, 90, 2, col1, col2, col3, 255, 5)
            renderer.text(fpsX + 5, fpsY + 4, 255, 255, 255, 255, nil, 0, nick_name:sub(1, 8) .. " /")
            renderer.text(fpsX + 60, fpsY + 4, col1, col2, col3, 255, nil, 0, math.floor(get_fps()) .. "fps")

            round_rect(timeX, timeY, 40, 20, 8, {10, 10, 10, 150})
            blur_line(timeX + 4, timeY + 20, 30, 2, col1, col2, col3, 255, 5)
            renderer.text(timeX + 4, timeY + 4, 255, 255, 255, 255, nil, 0, time)

        elseif ui.get(menu.visualsTab.wtm_style) == "Newest" then
            local screen = vector(client.screen_size())
            local watermark_base = "Anoflow.lua - " .. string.lower(nick_name) .. " / " .. string.lower(script_build)
            local size = vector(renderer.measure_text("", watermark_base .. " | " .. string.format("%02d:%02d:%02d", client.system_time()) .. " | FPS:" .. math.floor(get_fps()) .. " | " .. math.floor(client.latency() * 1000 + 0.5) .. "ms"))
            local water_mark = {174, 143, 191}
            local player = entity.get_local_player()
            local pos = vector(screen.x - (size.x + 20 + 10) - 10, 0 + 10)
            local text_pos = vector(pos.x + 10/2 + 20, pos.y + size.y/2)
            local cr, cg , cb = ui.get(calar)
            local adjust = entity.get_local_player() and 0 or 20
        
            watermark_data.h = ease.quad_in(0.3, watermark_data.h, (ui.is_menu_open() and 40 + 10 or 20) + 10/2 - watermark_data.h, 1)
            watermark_data.opacity = ease.quad_in(0.3, watermark_data.opacity, (ui.is_menu_open() and 255 or 0) - watermark_data.opacity, 1)
        
            func.render_shadow(pos.x - 20, pos.y + 20, size.x + 10 + 20 - adjust, watermark_data.h, 2, 6, {255, 255, 255, 125}, {0, 0, 0, 0})
            func.renderer_rounded_rectangle(pos.x - 20, pos.y + 20, size.x + 10 + 20 - adjust, watermark_data.h, 0, 0, 0, 0, 5)
        
            if player then
                images.get_steam_avatar(entity.get_steam64(player)):draw(pos.x + 10/2 - 20, text_pos.y + 20, 15, 15)
            end
        
            func.render_text(text_pos.x - adjust - 20, text_pos.y + 20, {255, 255, 255, 255, watermark_base}, {255, 255, 255, 255, " | "}, {255, 255, 255, 255, string.format("%02d:%02d:%02d", client.system_time())}, {255, 255, 255, 255, " | FPS:"}, {cr, cg , cb, 255, math.floor(get_fps())}, {255, 255, 255, 255, " | "}, {cr, cg , cb, 255, math.floor(client.latency() * 1000 + 0.5)}, {255, 255, 255, 255, "ms"})
            func.render_text(pos.x + 10/2 - 20, text_pos.y + size.y*1.5 + 20, {255, 255, 255, watermark_data.opacity, "Current version - "}, {cr, cg , cb, watermark_data.opacity, "nebula"})
            func.render_text(pos.x + 10/2 - 20, text_pos.y + size.y*2.5 + 20, {255, 255, 255, watermark_data.opacity, "Last update - "}, {cr, cg , cb, watermark_data.opacity, "16.04.2025"})
        end
            --функция блять  
    end
end)

--#region ragebot

--#region resolver

local player_miss_angles = {}

function table_contains_v(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

function get_random_angle(exclude_table)
    local new_angle
    repeat
        new_angle = math.random(-60, 60)
    until not table_contains_v(exclude_table, new_angle)
    return new_angle
end

function angles_to_string(angles)
    if #angles == 0 then return "none" end
    return table.concat(angles, ", ")
end

function on_miss_resolver(e)
    if e.reason == "spread" or e.reason == "prediction error" or e.reason == "death" then
        goto reas
    end
    local target = e.target
        
    if not entity.is_alive(target) then return end
        
    if not player_miss_angles[target] then
        player_miss_angles[target] = {}
    end
        
    local current_angle = plist.get(target, "Force body yaw value") or 0
        
    local ey = get_random_angle(player_miss_angles[target])
        
    plist.set(target, "Correction active", true)
    plist.set(target, "Force body yaw", true)
    plist.set(target, "Force body yaw value", ey)
        
    table.insert(player_miss_angles[target], ey)
        
    local player_name = entity.get_player_name(target) or "Unknown"
    local excluded_angles = angles_to_string(player_miss_angles[target])
    if ui.get(menu.rage_tab.rs_debug) then
        notif:new(3, string.format("Missed %s: missed angle %d, new angle %d, excluded angles: %s", player_name, current_angle, ey, excluded_angles), 255, 255, 255)
    end
    ::reas::
end

function animation_fix()
    if not ui.get(menu.rage_tab.player_correction) then return end
    local players = entity.get_players(true)
    for i = 1, #players do
        local player = players[i]
        if entity.is_alive(player) then
            local anim_state = entity.get_prop(player, "m_flPoseParameter[0]")
            if anim_state then
                entity.set_prop(player, "m_flPoseParameter[0]", anim_state + 0.01)
                entity.set_prop(player, "m_flPoseParameter[0]", anim_state)
            end
        end
    end
end

ffi.cdef[[
    struct animation_layer_t
    {
        char pad20[24];
        uint32_t m_nSequence;
        float m_flPrevCycle;
        float m_flWeight;
        float m_flWeightDeltaRate;
        float m_flPlaybackRate;
        float m_flCycle;
        uintptr_t m_pOwner;
        char pad_0038[4];
    };
]]

vars.classptr = ffi.typeof('void***')
vars.rawientitylist = client.create_interface('client_panorama.dll', 'VClientEntityList003') or error('VClientEntityList003 wasnt found', 2)
vars.ientitylist = ffi.cast(vars.classptr, vars.rawientitylist) or error('rawientitylist is nil', 2)
vars.get_client_entity = ffi.cast('void*(__thiscall*)(void*, int)', vars.ientitylist[0][3]) or error('get_client_entity is nil', 2)

function get_anim_layer(b, c)
    c = c or 1
    b = ffi.cast(vars.classptr, b)
    return ffi.cast('struct animation_layer_t**', ffi.cast('char*', b) + 0x2990)[0][c]
end

vars.Desync = {}
for i = 1, 64, 1 do
    vars.Desync[i] = 25
end

vars.miss_counter = {}

function handle_player(current_threat)
    if current_threat == nil or not entity.is_alive(current_threat) or entity.is_dormant(current_threat) then
        return
    end
    local yaw_values_normal = { 0, 0, 60, -60 }
    local yaw_values_desync = { 45, -60, 0 }
    local counter = vars.miss_counter[current_threat] or 0
    plist.set(current_threat, "Force body yaw", true)
    plist.set(current_threat, "Correction active", true)
    if vars.Desync[current_threat] ~= nil and vars.Desync[current_threat] < 64 then
        plist.set(current_threat, "Force body yaw value", yaw_values_desync[(counter % 3) + 1] or 0)
    else
        plist.set(current_threat, "Force body yaw value", yaw_values_normal[(counter % 3) + 1] or 0)
    end
end

function update_players()
    local lp = entity.get_local_player()
    if not lp or not entity.is_alive(lp) then
        return
    end
    local Players = entity.get_players(true)
    if not Players then
        return
    end
    for i, Player in pairs(Players) do
        local PlayerP = vars.get_client_entity(vars.ientitylist, Player)
        if PlayerP == nil then goto continue_loop end
        local Animlayers = {}
        Animlayers[6] = {}
        Animlayers[6]["Main"] = get_anim_layer(PlayerP, 6)
        if Animlayers[6]["Main"] == nil then goto continue_loop end
        Animlayers[6]["m_flPlaybackRate"] = Animlayers[6]["Main"].m_flPlaybackRate
        local RSideR = math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^4) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^5) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^6) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^7) % 10
        local RSideS = math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^6) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^7) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^8) % 10 + math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^9) % 10
        local Tmp
        if math.floor(Animlayers[6]["m_flPlaybackRate"] * 10^3) % 10 == 0 then
            Tmp = -3.4117 * RSideS + 98.9393
        else
            Tmp = -3.4117 * RSideR + 98.9393
        end
        vars.Desync[Player] = Tmp
        handle_player(Player)
        ::continue_loop::
    end
end


event_callback("setup_command", function(cmd)
    if ui.get(menu.rage_tab.resolver) then
        if ui.get(menu.rage_tab.rs_mode) == "Wide desync" then
            update_players()
        end
    end
end)


function on_aim_miss_resolver(e)
    vars.miss_counter[e.target] = (vars.miss_counter[e.target] or 0) + 1 
end


--#end region resolver

--#region defensive resolver

--#end region defensive reslover

--#end region backtrack

--#region predict


--#end region predict

--#region aimtools
local silent_a = ref_ui("Rage", "Other", "Silent aim")
vars.dl_shot = false

aimtools_debug = function()
    if not ui.get(menu.rage_tab.aim_tools_enable) then
        return
    end
    
    --[[if not entity.is_alive(entity.get_local_player()) then
        return
    end]]

    local function get_distance()
        local result = math.huge
        local heightDifference = 0
        local localplayer = entity.get_local_player()
        local lp_origin = { entity.get_origin(localplayer) }
        local entities = entity.get_players(true)

        local target = client.current_threat()
    
        for i = 1, #entities do
            local ent = entities[i]
            if ent == target and ent ~= localplayer and entity.is_alive(ent) then
                local ent_origin = { entity.get_origin(ent) }
                local distance = (vector(ent_origin[1], ent_origin[2], ent_origin[3]) - vector(lp_origin[1], lp_origin[2], lp_origin[3])):length2d()
                if distance < result then
                    result = distance
                    heightDifference = ent_origin[3] - lp_origin[3]
                end
            end
        end
    
        return math.floor(result / 10), math.floor(heightDifference)
    end

    local distance_to_enemy = { get_distance() }
    local is_higher = distance_to_enemy[2] > 50

    local baim_mode = ui.get(menu.rage_tab.aim_tools_baim_mode)
    local safe_hp = ui.get(menu.rage_tab.aim_tools_safe_hp)
    local baim_hp = tonumber(ui.get(menu.rage_tab.aim_tools_baim_hp))

    local enemies = entity.get_players(true)

    local baim_triggers = ui.get(menu.rage_tab.aim_tools_baim_trigers)
    local safe_triggers = ui.get(menu.rage_tab.aim_tools_safe_trigers)

    for i, enemy_ent in ipairs(enemies) do
        local health = entity.get_prop(enemy_ent, "m_iHealth")

        if (func.includes(baim_triggers, "Enemy higher than you") and is_higher) or
           (func.includes(baim_triggers, "Enemy HP < X") and health < baim_hp) then
            plist.set(enemy_ent, "Override prefer body aim", baim_mode)
        else
            plist.set(enemy_ent, "Override prefer body aim", "-")
        end

        if (func.includes(safe_triggers, "Enemy higher than you") and is_higher) or
           (func.includes(safe_triggers, "Enemy HP < X") and health < safe_hp) then
            plist.set(enemy_ent, "Override safe point", "On")
        else
            plist.set(enemy_ent, "Override safe point", "-")
        end
    end

    local me = c_ent.get_local_player()
    local flags = me:get_prop("m_fFlags")

    local air_hc = ui.get(menu.rage_tab.aim_tools_hc_air)
    local land_hc = ui.get(menu.rage_tab.aim_tools_hc_land)

    if ui.get(menu.rage_tab.aim_tools_hitchance) then
        ui.set_visible(refs.hitChance, false)
        ground_ticks = bit.band(flags, 1) == 1 and ground_ticks + 1 or 0

        if func.in_air(entity.get_local_player()) then
            ui.set(refs.hitChance, air_hc)
        elseif ground_ticks > 5 and ground_ticks < 80 then
            ui.set(refs.hitChance, land_hc)
        else
            ui.set(refs.hitChance, L_hc)
        end
    end
    if ui.get(menu.rage_tab.aim_tools_silent) then
        if func.includes(ui.get(menu.rage_tab.aim_tools_silent_out), "Out of fov") then
            
        end
    end

    if ui.get(menu.rage_tab.aim_tools_delay_shot) then
        local target = client.current_threat()
        local health = entity.get_prop(target, "m_iHealth")
        if (func.includes(ui.get(menu.rage_tab.aim_tools_delay_states), "Standing") and vars.pState == 2) or 
        (func.includes(ui.get(menu.rage_tab.aim_tools_delay_states), "Running") and vars.pState == 3) or
        (func.includes(ui.get(menu.rage_tab.aim_tools_delay_states), "Walking") and vars.pState == 4) or
        (func.includes(ui.get(menu.rage_tab.aim_tools_delay_states), "Crouching") and vars.pState == 5) or
        (func.includes(ui.get(menu.rage_tab.aim_tools_delay_states), "Sneaking") and vars.pState == 6) or
        (ui.get(menu.rage_tab.aim_tools_delay_hp) == "Lethal" and target ~= nil and health <= 90 ) or 
        (ui.get(menu.rage_tab.aim_tools_delay_hp) == "Not lethal" and target ~= nil and health >= 91) or
        (ui.get(menu.rage_tab.aim_tools_delay_land) and (ground_ticks > 5 and ground_ticks < 80)) then
            ui.set(refs.delay_shot[1], true)
            vars.dl_shot = true
        else
            ui.set(refs.delay_shot[1], false)
            vars.dl_shot = false
        end
    end
end

--#end region aimtools

--#region jumpscout

function jumpscout(cmd)
    if ui.get(menu.rage_tab.jump_scout) then
        local vel_x, vel_y = entity.get_prop(entity.get_local_player(), "m_vecVelocity")
        local vel = math.sqrt(vel_x^2 + vel_y^2)
        ui.set(refs.air_strafe, not (cmd.in_jump and (vel < 10)) or ui.is_menu_open())
    end
end

--#end region jumpscout

--#region chargedt

function charge_dt()
    local isDt = ui.get(refs.dt[1]) and ui.get(refs.dt[2])
    local lpweapon = entity.get_player_weapon(entity.get_local_player())
    local wpnclassname = lpweapon and entity.get_classname(lpweapon) or ""
    local wpnindx = lpweapon and bit.band(65535, entity.get_prop(lpweapon, "m_iItemDefinitionIndex")) or 0

    if wpnindx ~= 40 and wpnindx ~= 9 then
        ui.set(ref.aimbot, true)
        if callback_reg then
            client.unset_event_callback('run_command', check_charge)
            callback_reg = false
        end
        return
    end

    if ui.get(menu.rage_tab.charge_dt) then
        if not ui.get(refs.dt[2]) or not ui.get(refs.dt[1]) then
            ui.set(ref.aimbot, true)
            if callback_reg then
                client.unset_event_callback('run_command', check_charge)
                callback_reg = false
            end
            return
        end
        
        local local_player = entity.get_local_player()
        
        if not callback_reg then
            client.set_event_callback('run_command', check_charge)
            callback_reg = true
        end
        
        local threat = client.current_threat()
        local wpn_list = ui.get(menu.rage_tab.charge_wpn)
        local wpn_states = ui.get(menu.rage_tab.charge_bit)

        local is_valid_weapon = (func.includes(wpn_list, "Scout") and wpnindx == 40) or (func.includes(wpn_list, "Awp") and wpnindx == 9)
        local is_valid_state = (func.includes(wpn_states, "Ground") and not func.in_air(local_player)) or (func.includes(wpn_states, "Air") and func.in_air(local_player))

        if (not dt_charged and threat) and is_valid_weapon and is_valid_state then
            ui.set(ref.aimbot, false)
        else
            ui.set(ref.aimbot, true)
        end
    else
        ui.set(ref.aimbot, true)
        if callback_reg then
            client.unset_event_callback('run_command', check_charge)
            callback_reg = false
        end
    end
end
local ai_ = {
    values = {
        multi_points = nil,
        default_multi_points = nil
    },
    config = {
        weapons = {
            [40] = { -- Scout
                height_threshold_low = -30,
                height_threshold_high = 30,
                multi_points_low = 50,
                multi_points_high = 94,
                multi_points_default = nil
            },
        }
    }
}

local function on_load()
    ai_.values.default_multi_points = ui.get(refs.multi_points)
    for _, weapon_config in pairs(ai_.config.weapons) do
        weapon_config.multi_points_default = ai_.values.default_multi_points
    end
end
on_load()

local function get_distance_and_height()
    local local_player = entity.get_local_player()
    if not local_player or not entity.is_alive(local_player) then
        return math.huge, 0
    end

    local lp_origin = vector(entity.get_origin(local_player))
    local entities = entity.get_players(true)
    local min_distance = math.huge
    local height_difference = 0

    for _, ent in ipairs(entities) do
        if ent ~= local_player and entity.is_alive(ent) then
            local ent_origin = vector(entity.get_origin(ent))
            local distance = (ent_origin - lp_origin):length2d()
            if distance < min_distance then
                min_distance = distance
                height_difference = ent_origin.z - lp_origin.z
            end
        end
    end

    return math.floor(min_distance / 10), math.floor(height_difference)
end

ai_.multi_points = function()
    local lp_weapon = entity.get_player_weapon(entity.get_local_player())
    if not lp_weapon then
        return
    end

    local wpn_index = bit.band(65535, entity.get_prop(lp_weapon, "m_iItemDefinitionIndex"))
    local weapon_config = ai_.config.weapons[wpn_index]

    if not weapon_config then
        return 
    end

    local distance, height_diff = get_distance_and_height()

    local new_multi_points
    if height_diff < weapon_config.height_threshold_low then
        new_multi_points = weapon_config.multi_points_low
    elseif height_diff > weapon_config.height_threshold_high then
        new_multi_points = weapon_config.multi_points_high
    else
        new_multi_points = weapon_config.multi_points_default
    end

    if new_multi_points and new_multi_points ~= ai_.values.multi_points then
        ai_.values.multi_points = new_multi_points
        ui.set(refs.multi_points, new_multi_points)
    end
end


--#eng region chargedt

--#end region ragebot


local skeetclantag = ui.reference('MISC', 'MISCELLANEOUS', 'Clan tag spammer')

local duration = 30
local clantags = {
    'anoflow '
}

local empty = {''}
local clantag_prev
event_callback('net_update_end', function()
    if ui.get(skeetclantag) then 
        return 
    end

    local cur = math.floor(globals.tickcount() / duration) % #clantags
    local clantag = clantags[cur+1]

    if ui.get(menu.miscTab.clanTag) then
        if ui.get(menu.miscTab.clantag_mode) == "Anoflow" then
            if clantag ~= clantag_prev then
                clantag_prev = clantag
                client.set_clan_tag(clantag)
            end
        elseif ui.get(menu.miscTab.clantag_mode) == "#airstopgang" then
            client.set_clan_tag("#AIRSTOPGANG")
        end
    end
    if ui.get(menu.miscTab.clan_w) then
        client.set_clan_tag("#WMENTOLGANG")
    end
    if ui.get(menu.miscTab.clan_a) then
        client.set_clan_tag("#ALKAESHKAGANG")
    end
end)
ui.set_callback(menu.miscTab.clanTag, function() client.set_clan_tag('\0') end)

ui.set_callback(menu.miscTab.inf_ammo, function()
    if menu.miscTab.inf_ammo then
        cvar.sv_infinite_ammo:set_float(2)
    end
end)

function getspeed(player_index)
    return vector(entity.get_prop(player_index, "m_vecVelocity")):length()
end




ui.update(menu.configTab.list,getConfigList())
if database.read(lua.database.configs) == nil then
    database.write(lua.database.configs, {})
end
ui.set(menu.configTab.name, #database.read(lua.database.configs) == 0 and "" or database.read(lua.database.configs)[ui.get(menu.configTab.list)+1].name)

local function initDatabase()
    if database.read(lua.database.configs) == nil then
        database.write(lua.database.configs, {})
    end

    local ahs = json.parse(base64.decode("W1sidHJ1ZSIsInRhYmxlOiBOVUxMIiwi7oWIIExlZnQgJiBSaWdodCIsIjAiLCIwIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oaZIFN0YXRpYyIsIjAiLCIxIiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItOCIsIjEzIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oWIIEppdHRlciIsIjAiLCI3IiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItMjYiLCIzMyIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6FiCBKaXR0ZXIiLCIwIiwiNyIsIjEiLCIwIiwidHJ1ZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItMzEiLCI0MCIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6FiCBKaXR0ZXIiLCIwIiwiNyIsIjEiLCIwIiwiZmFsc2UiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTIzIiwiMzMiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTI4IiwiMzMiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTMyIiwiMzUiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTM5IiwiNDUiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsImZhbHNlIiwiMCIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiLTg5IiwiODkiLCIwIiwiMSIsIjIiLCIwIiwiMCIsIjAiLCJEaXNhYmxlZCIsIjAiLCIxODAiLCI0IiwiLTkwIiwiOTAiLCIyIiwiNCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsIiAgICIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCIwIiwiMCIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6GmSBTdGF0aWMiLCIwIiwiMSIsIjEiLCIwIiwiZmFsc2UiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsInRhYmxlOiBOVUxMIiwi7oWIIExlZnQgJiBSaWdodCIsIjAiLCIwIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oaZIFN0YXRpYyIsIjAiLCIxIiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiMCIsIjAiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhpkgU3RhdGljIiwiMCIsIjEiLCIxIiwiMCIsImZhbHNlIiwiMCIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiLTg5IiwiODkiLCIwIiwiMSIsIjIiLCIwIiwiMCIsIjAiLCJEaXNhYmxlZCIsIjAiLCIxODAiLCI0IiwiLTkwIiwiOTAiLCIyIiwiNCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsIiAgICIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIl0sWyJmYWxzZSIsImZhbHNlIiwiMTUwIiwiZmFsc2UiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCJmYWxzZSIsImZhbHNlIiwidGFibGU6IE5VTEwiLCJmYWxzZSIsIkZsaWNrIiwiRmx1Y3R1YXRlIiwiMCJdLFsiZmFsc2UiLCJ0cnVlIiwiRGVmYXVsdCIsImZhbHNlIiwiQmluZCIsInRydWUiLCJ0cnVlIiwiNjgiLCIwIiwiMCIsIjAiLCI2OCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiMjU1IiwiMTAwIiwiMTAiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCI3MCIsIkRlZmF1bHQiLCJmYWxzZSIsIjEwMCIsImZhbHNlIiwiZmFsc2UiLCIyNTUiLCI1MCIsIi0iLCIxMCIsImZhbHNlIiwidGFibGU6IE5VTEwiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCItIiwiLSIsIjY4IiwiMCIsIjAiLCIwIiwiNjgiLCIwIiwiMCIsIjAiXSxbInRydWUiLCJmYWxzZSIsInRydWUiLCJmYWxzZSIsIldpZGUgZGVzeW5jIiwidHJ1ZSIsImZhbHNlIiwidHJ1ZSIsImZhbHNlIiwiZmFsc2UiLCJ0cnVlIiwiZmFsc2UiLCJUYXJnZXQgcHJpb3JpdHkiLCJMZXRoYWwiLCI1MDAiLCJmYWxzZSIsIkZvcmNlIiwidGFibGU6IE5VTEwiLCI5MiIsInRhYmxlOiBOVUxMIiwiOTIiLCJ0cnVlIiwidHJ1ZSIsIkFub2Zsb3ciLCJmYWxzZSIsInRydWUiLCJmYWxzZSIsInJlc29sdmVyIiwiIiwiZmFsc2UiLCJmYWxzZSIsInRhYmxlOiBOVUxMIiwiZmFsc2UiXV0="))
    for i, preset in pairs(ahs) do
        table.insert(presets, { name = "*Default", config = json.parse(base64.decode("W1sidHJ1ZSIsInRhYmxlOiBOVUxMIiwi7oWIIExlZnQgJiBSaWdodCIsIjAiLCIwIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oaZIFN0YXRpYyIsIjAiLCIxIiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItOCIsIjEzIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oWIIEppdHRlciIsIjAiLCI3IiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItMjYiLCIzMyIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6FiCBKaXR0ZXIiLCIwIiwiNyIsIjEiLCIwIiwidHJ1ZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsInRydWUiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCItMzEiLCI0MCIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6FiCBKaXR0ZXIiLCIwIiwiNyIsIjEiLCIwIiwiZmFsc2UiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTIzIiwiMzMiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTI4IiwiMzMiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTMyIiwiMzUiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsInRydWUiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJ0cnVlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiLTM5IiwiNDUiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhYggSml0dGVyIiwiMCIsIjciLCIxIiwiMCIsImZhbHNlIiwiMCIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiLTg5IiwiODkiLCIwIiwiMSIsIjIiLCIwIiwiMCIsIjAiLCJEaXNhYmxlZCIsIjAiLCIxODAiLCI0IiwiLTkwIiwiOTAiLCIyIiwiNCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsIiAgICIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCJ0YWJsZTogTlVMTCIsIu6FiCBMZWZ0ICYgUmlnaHQiLCIwIiwiMCIsIjEiLCIwIiwiMCIsIjAiLCIwIiwiMiIsIu6GmSBTdGF0aWMiLCIwIiwiMSIsIjEiLCIwIiwiZmFsc2UiLCIwIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCItODkiLCI4OSIsIjAiLCIxIiwiMiIsIjAiLCIwIiwiMCIsIkRpc2FibGVkIiwiMCIsIjE4MCIsIjQiLCItOTAiLCI5MCIsIjIiLCI0IiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiICAgIiwiZmFsc2UiLCJEaXNhYmxlZCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsInRhYmxlOiBOVUxMIiwi7oWIIExlZnQgJiBSaWdodCIsIjAiLCIwIiwiMSIsIjAiLCIwIiwiMCIsIjAiLCIyIiwi7oaZIFN0YXRpYyIsIjAiLCIxIiwiMSIsIjAiLCJmYWxzZSIsIjAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIi04OSIsIjg5IiwiMCIsIjEiLCIyIiwiMCIsIjAiLCIwIiwiRGlzYWJsZWQiLCIwIiwiMTgwIiwiNCIsIi05MCIsIjkwIiwiMiIsIjQiLCIwIiwiMCIsIjAiLCIwIiwiZmFsc2UiLCIgICAiLCJmYWxzZSIsIkRpc2FibGVkIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsImZhbHNlIiwidGFibGU6IE5VTEwiLCLuhYggTGVmdCAmIFJpZ2h0IiwiMCIsIjAiLCIxIiwiMCIsIjAiLCIwIiwiMCIsIjIiLCLuhpkgU3RhdGljIiwiMCIsIjEiLCIxIiwiMCIsImZhbHNlIiwiMCIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiLTg5IiwiODkiLCIwIiwiMSIsIjIiLCIwIiwiMCIsIjAiLCJEaXNhYmxlZCIsIjAiLCIxODAiLCI0IiwiLTkwIiwiOTAiLCIyIiwiNCIsIjAiLCIwIiwiMCIsIjAiLCJmYWxzZSIsIiAgICIsImZhbHNlIiwiRGlzYWJsZWQiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIiwiMCIsIjAiLCIwIl0sWyJmYWxzZSIsImZhbHNlIiwiMTUwIiwiZmFsc2UiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCJmYWxzZSIsImZhbHNlIiwidGFibGU6IE5VTEwiLCJmYWxzZSIsIkZsaWNrIiwiRmx1Y3R1YXRlIiwiMCJdLFsiZmFsc2UiLCJ0cnVlIiwiRGVmYXVsdCIsImZhbHNlIiwiQmluZCIsInRydWUiLCJ0cnVlIiwiNjgiLCIwIiwiMCIsIjAiLCI2OCIsIjAiLCIwIiwiMCIsImZhbHNlIiwiMjU1IiwiMTAwIiwiMTAiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCI3MCIsIkRlZmF1bHQiLCJmYWxzZSIsIjEwMCIsImZhbHNlIiwiZmFsc2UiLCIyNTUiLCI1MCIsIi0iLCIxMCIsImZhbHNlIiwidGFibGU6IE5VTEwiLCJmYWxzZSIsImZhbHNlIiwiZmFsc2UiLCItIiwiLSIsIjY4IiwiMCIsIjAiLCIwIiwiNjgiLCIwIiwiMCIsIjAiXSxbInRydWUiLCJmYWxzZSIsInRydWUiLCJmYWxzZSIsIldpZGUgZGVzeW5jIiwidHJ1ZSIsImZhbHNlIiwidHJ1ZSIsImZhbHNlIiwiZmFsc2UiLCJ0cnVlIiwiZmFsc2UiLCJUYXJnZXQgcHJpb3JpdHkiLCJMZXRoYWwiLCI1MDAiLCJmYWxzZSIsIkZvcmNlIiwidGFibGU6IE5VTEwiLCI5MiIsInRhYmxlOiBOVUxMIiwiOTIiLCJ0cnVlIiwidHJ1ZSIsIkFub2Zsb3ciLCJmYWxzZSIsInRydWUiLCJmYWxzZSIsInJlc29sdmVyIiwiIiwiZmFsc2UiLCJmYWxzZSIsInRhYmxlOiBOVUxMIiwiZmFsc2UiXV0="))})
        ui.set(menu.configTab.name, "*Default")
    end
    ui.update(menu.configTab.list, getConfigList())
end
initDatabase()

ui.set_callback(menu.configTab.list, function(value)
    local protected = function()
        if value == nil then return end
        local name = ""

        local configs = getConfigList()
        if configs == nil then return end

        name = configs[ui.get(value)+1] or ""

        ui.set(menu.configTab.name, name)
    end

    if pcall(protected) then

    end
end)

ui.set_callback(menu.configTab.load, function()
    local name = ui.get(menu.configTab.name)
    if name == "" then
        notif:new(3,  "Config name is empty", 255, 120, 120)
        return
    end

    local protected = function()
        print("Loading config: " .. name)

        local config = getConfig(name)
        if not config then
            error("Config not found: " .. name)
        end

        loadSettings(config.config)

        
        print("Config loaded successfully: " .. name)
    end

    local status, err = pcall(protected)
    if status then
        name = name:gsub('*', '')
        notif:new(3, string.format('Successfully loaded "%s"', name), 0, 255, 0)
    else
        notif:new(3, string.format('КОНФИГИ НЕ РАБОТАЮТ ,ПОТОМ ПОЧИНЮ! ПОЛЬЗУЙТЕСЬ (IMPORT) (EXPORT) "%s": %s', name, err), 255, 120, 120)
    end
end)

ui.set_callback(menu.configTab.save, function()

        local name = ui.get(menu.configTab.name)
        if name == "" then return end

        for i, v in pairs(presets) do
            if v.name == name:gsub('*', '') then
                notif:new(3, string.format('You can`t save built-in preset "%s"', name:gsub('*', '')), 255, 120, 120)
                return
            end
        end

        if name:match("[^%w%s%p]") ~= nil then
            notif:new(3, string.format('Failed to save "%s" due to invalid characters', name), 255, 120, 120)
            return
        end
    local protected = function()
        saveConfig(menu, name)
        ui.update(menu.configTab.list, getConfigList())
    end
    if pcall(protected) then
        notif:new(3, string.format('Successfully saved "%s"', name), 255, 255, 255)
    end
end)

ui.set_callback(menu.configTab.create, function()
    local name = ui.get(menu.configTab.create_name)
    if name == "" then return end
    for i, v in pairs(presets) do
        if v.name == name:gsub('*', '') then
            notif:new(3, string.format('You can`t create built-in preset "%s"', name:gsub('*', '')), 255, 120, 120)
            return
        end
    end
    if name:match("[^%w%s%p]") ~= nil then
        notif:new(3, string.format('Failed to create "%s" due to invalid characters', name), 255, 120, 120)
        return
    end

    local protected = function()
        saveConfig(menu, name)
        ui.update(menu.configTab.list, getConfigList())
    end

    local status, err = pcall(protected)
    if status then
        name = name:gsub('*', '')
        notif:new(3, string.format('Successfully created "%s"', name), 255, 255, 255)
    else
        notif:new(3, string.format('Failed to created "%s": %s', name, err), 255, 120, 120)
    end
end)

ui.set_callback(menu.configTab.delete, function()
    local name = ui.get(menu.configTab.name)
    -- if name == "" or name == "*Default" then return end

    for i, v in pairs(presets) do
        if v.name == name:gsub('*', '') then
            notif:new(3, string.format('You can`t delete built-in preset "%s"', name:gsub('*', '')), 255, 120, 120)
            return
        end
    end

    local protected = function()
        deleteConfig(name)
    end

    if pcall(protected) then
        ui.update(menu.configTab.list, getConfigList())
        ui.set(menu.configTab.list, #presets + #database.read(lua.database.configs) - #database.read(lua.database.configs))
        ui.set(menu.configTab.name, #database.read(lua.database.configs) == 0 and "" or getConfigList()[#presets + #database.read(lua.database.configs) - #database.read(lua.database.configs)+1])
        notif:new(3, string.format('Successfully deleted "%s"', name), 255, 255, 255)
    end
end)


panorama_mods = panorama.loadstring([[
    var panels = {
        friends: { panel: null, original: null, original_visibility: null },
        logo: { panel: null, original: null, original_transform: null, original_visibility: null },
        nickname: { panel: null, original: null },
        news: { panel: null, original: null, original_transform: null, original_visibility: null }
    };

    var _CreateFriendsButton = function() {
        if (panels.friends.panel) {
            panels.friends.panel.DeleteAsync(0);
            panels.friends.panel = null;
        }
        
        panels.friends.original = $.GetContextPanel().FindChildTraverse("JsFriendsTab");
        if (!panels.friends.original) return;

        panels.friends.original_visibility = panels.friends.original.style.visibility || 'visible';
        panels.friends.original.style.visibility = "collapse";

        var parent = panels.friends.original.GetParent();
        if (!parent) return;

        panels.friends.panel = $.CreatePanel("Panel", parent, "custom_button_panel");
        if (!panels.friends.panel) return;

        var layout = `
        <root>
            <Panel class="content-navbar">
                <RadioButton id="custom_friends_button" class="mainmenu-sidebar-radio"
                    onactivate="$.DispatchEvent('SidebarContextMenuActive', true); friendsList.ShowSelectedTab(0);"
                    onmouseover="UiToolkitAPI.ShowTextTooltip('custom_friends_button', 'Friends')"
                    onmouseout="UiToolkitAPI.HideTextTooltip()">
                    <Image textureheight="64" texturewidth="64" src="https://razeclub.ru/styles/razehack/png/logo.png" />
                </RadioButton>
            </Panel>
        </root>
        `;

        if (!panels.friends.panel.BLoadLayoutFromString(layout, false, false)) {
            panels.friends.panel.DeleteAsync(0);
            panels.friends.panel = null;
            return;
        }

        parent.MoveChildBefore(panels.friends.panel, panels.friends.original);
    };

    var _CreateLogo = function() {
        if (panels.logo.panel) {
            panels.logo.panel.DeleteAsync(0);
            panels.logo.panel = null;
        }
        
        panels.logo.original = $.GetContextPanel().FindChildTraverse("MainMenuNavBarHome");
        if (!panels.logo.original) return;

        panels.logo.original_transform = panels.logo.original.style.transform || 'none';
        panels.logo.original_visibility = panels.logo.original.style.visibility || 'visible';
        panels.logo.original.style.transform = 'translate3d(-9999px, -9999px, 0)';
        panels.logo.original.style.visibility = 'collapse';

        var parent = panels.logo.original.GetParent();
        if (!parent) return;

        panels.logo.panel = $.CreatePanel("Panel", parent, "custom_logo_panel");
        if (!panels.logo.panel) return;

        var layout = `
        <root>
            <Panel class="mainmenu-navbar__btn-small mainmenu-navbar__btn-home">
                <RadioButton id="main_menu"
                    onactivate="MainMenu.OnHomeButtonPressed(); $.DispatchEvent( 'PlaySoundEffect', 'UIPanorama.mainmenu_press_home', 'MOUSE' ); $.DispatchEvent('PlayMainMenuMusic', true, true); GameInterfaceAPI.SetSettingString('panorama_play_movie_ambient_sound', '1');"
                    oncancel="MainMenu.OnEscapeKeyPressed();">
                    <Image textureheight="90" texturewidth="-1" src="https://razeclub.ru/styles/razehack/png/logo.png" />
                </RadioButton>
            </Panel>
        </root>
        `;

        if (!panels.logo.panel.BLoadLayoutFromString(layout, false, false)) {
            panels.logo.panel.DeleteAsync(0);
            panels.logo.panel = null;
            return;
        }

        parent.MoveChildBefore(panels.logo.panel, parent.GetChild(0));
    };

    var _CreateNicknameImage = function() {
        if (panels.nickname.panel) {
            panels.nickname.panel.DeleteAsync(0);
            panels.nickname.panel = null;
        }
        
        panels.nickname.original = $.GetContextPanel().FindChildTraverse("JsPlayerName");
        if (!panels.nickname.original) return;

        var parent = panels.nickname.original.GetParent();
        if (!parent) return;

        parent.style.flowChildren = "right";
        panels.nickname.panel = $.CreatePanel("Panel", parent, "custom_image_panel");
        if (!panels.nickname.panel) return;

        var layout = `
        <root>
            <Panel style="flow-children: right; margin-right: 5px;">
                <Image textureheight="48" texturewidth="48" src="https://razeclub.ru/styles/razehack/png/logo.png" />
            </Panel>
        </root>
        `;

        if (!panels.nickname.panel.BLoadLayoutFromString(layout, false, false)) {
            panels.nickname.panel.DeleteAsync(0);
            panels.nickname.panel = null;
            return;
        }

        parent.MoveChildBefore(panels.nickname.panel, panels.nickname.original);
    };

    var _CreateNewsPanel = function() {
        if (panels.news.panel) {
            panels.news.panel.DeleteAsync(0);
            panels.news.panel = null;
        }
        
        panels.news.original = $.GetContextPanel().FindChildTraverse("JsNewsContainer");
        if (!panels.news.original) return;

        panels.news.original_transform = panels.news.original.style.transform || 'none';
        panels.news.original_visibility = panels.news.original.style.visibility || 'visible';
        panels.news.original.style.transform = 'translate3d(-9999px, -9999px, 0)';
        panels.news.original.style.visibility = 'collapse';

        var parent = panels.news.original.GetParent();
        if (!parent) return;

        panels.news.panel = $.CreatePanel("Panel", parent, "custom_news_panel");
        if (!panels.news.panel) return;

        var layout = `
        <root>
            <Panel class="news-panel MainMenuModeOnly">
                <Button id="main_menu_news"
                    onactivate="UiToolkitAPI.ShowGenericPopupBgStyle('razeclub.ru', 'uwukson4800', '', 'blur'); $.DispatchEvent( 'PlaySoundEffect', 'UIPanorama.mainmenu_press_quit', 'MOUSE' ); $.DispatchEvent('PlayMainMenuMusic', true, true); GameInterfaceAPI.SetSettingString('panorama_play_movie_ambient_sound', '1');"
                    oncancel="MainMenu.OnEscapeKeyPressed();">
                    <Image textureheight="450" texturewidth="-1" src="https://razeclub.ru/styles/razehack/png/logo.png" />
                </Button>
            </Panel>
        </root>
        `;

        if (!panels.news.panel.BLoadLayoutFromString(layout, false, false)) {
            panels.news.panel.DeleteAsync(0);
            panels.news.panel = null;
            return;
        }

        parent.MoveChildBefore(panels.news.panel, panels.news.original);
    };

    var _Destroy = function() {
        if (panels.friends.panel) {
            panels.friends.panel.DeleteAsync(0.0);
            panels.friends.panel = null;
        }
        if (panels.friends.original) {
            panels.friends.original.style.visibility = panels.friends.original_visibility;
        }

        if (panels.logo.panel) {
            panels.logo.panel.DeleteAsync(0.0);
            panels.logo.panel = null;
        }
        if (panels.logo.original) {
            panels.logo.original.style.transform = panels.logo.original_transform;
            panels.logo.original.style.visibility = panels.logo.original_visibility;
        }

        if (panels.nickname.panel) {
            panels.nickname.panel.DeleteAsync(0.0);
            panels.nickname.panel = null;
        }

        if (panels.news.panel) {
            panels.news.panel.DeleteAsync(0.0);
            panels.news.panel = null;
        }
        if (panels.news.original) {
            panels.news.original.style.transform = panels.news.original_transform;
            panels.news.original.style.visibility = panels.news.original_visibility;
        }
    };

    return {
        init: function() {
            _CreateFriendsButton();
            _CreateLogo();
            _CreateNicknameImage();
            _CreateNewsPanel();
        },
        destroy: _Destroy
    };
]], "CSGOMainMenu")()

-- Apply API overrides
panorama.loadstring([[
    NewsAPI.IsNewClientAvailable = () => false;
    MyPersonaAPI.IsVacBanned = () => 0;
    CompetitiveMatchAPI.GetCooldownSecondsRemaining = () => 0;
]])()

ui.set_callback(menu.visualsTab.panorama, function()
    if menu.visualsTab.panorama then
        panorama_mods.init()
    else
        panorama_mods.destroy()
    end
end)

client.set_event_callback('shutdown', function()
    panorama_mods.destroy()
end)

up_down, arrow_left, arrow_right =0,0,0
event_callback("paint_ui", function()
    if ui.get(menu.visualsTab.arows_txt) then
        local scr = { client.screen_size() }
        local cvet1, cvet2, cvet3 = ui.get(menu.visualsTab.arows_txt_color)
        if entity.get_prop(entity.get_local_player(), 'm_bIsScoped') == 1 then
            if ui.get(menu.visualsTab.arows_txt_up_or_daun) == "Up" then
                up_down = -ui.get(menu.visualsTab.arows_txt_up_or_daun_offset)
            elseif ui.get(menu.visualsTab.arows_txt_up_or_daun) == "Down" then
                up_down = ui.get(menu.visualsTab.arows_txt_up_or_daun_offset)
            else
                up_down = 0
            end
        else
            up_down = 0
        end
        if vars.aa_dir == 2 then
            arrow_right = func.lerp(arrow_right, 255, globals.frametime() * 24)
        else
            arrow_right = func.lerp(arrow_right, 0, globals.frametime() * 24)
        end
        if vars.aa_dir == 1 then
            arrow_left = func.lerp(arrow_left, 255, globals.frametime() * 24)
        else
            arrow_left = func.lerp(arrow_left, 0, globals.frametime() * 24)
        end
        renderer.text(scr[1] / 2 - ui.get(menu.visualsTab.arows_txt_offset) , scr[2] / 2 + up_down, cvet1, cvet2, cvet3, arrow_left, "+cb", nil, "<") 
        renderer.text(scr[1] / 2 + ui.get(menu.visualsTab.arows_txt_offset) , scr[2] / 2 + up_down, cvet1, cvet2, cvet3, arrow_right, "+cb", nil, ">") 
    end
end)

--виев


local v_locals = {
    fov = 0,
    x = 0,
    y = 0,
    z = 0
}

local v_locals_second = {
    fov = 0,
    x = 0,
    y = 0,
    z = 0
}
function anim_view()
    local v_model = {
        s_fov = ui.get(menu.visualsTab.scoped.viewmodel_fov) / 3,
        s_x = ui.get(menu.visualsTab.scoped.viewmodel_x) / 3,
        s_y = ui.get(menu.visualsTab.scoped.viewmodel_y) / 3,
        s_z = ui.get(menu.visualsTab.scoped.viewmodel_z) / 3,
    
        d_fov = ui.get(menu.visualsTab.default.viewmodel_fov) / 3,
        d_x = ui.get(menu.visualsTab.default.viewmodel_x) / 3,
        d_y = ui.get(menu.visualsTab.default.viewmodel_y) / 3,
        d_z = ui.get(menu.visualsTab.default.viewmodel_z) / 3
    }    
    local scoped = entity.get_prop(entity.get_local_player(), 'm_bIsScoped') == 1
    if scoped then
        v_locals.fov = math.lerp(v_locals.fov, v_model.s_fov, globals.frametime() * 24)
        v_locals.x = math.lerp(v_locals.x, v_model.s_x, globals.frametime() * 24)
        v_locals.y = math.lerp(v_locals.y, v_model.s_y, globals.frametime() * 24)
        v_locals.z = math.lerp(v_locals.z, v_model.s_z, globals.frametime() * 24)
    elseif not scoped then
        v_locals.fov = math.lerp(v_locals.fov, v_model.d_fov, globals.frametime() * 24)
        v_locals.x = math.lerp(v_locals.x, v_model.d_x, globals.frametime() * 24)
        v_locals.y = math.lerp(v_locals.y, v_model.d_y, globals.frametime() * 24)
        v_locals.z = math.lerp(v_locals.z, v_model.d_z, globals.frametime() * 24)
    end
    client.set_cvar("viewmodel_fov", v_locals.fov)
    client.set_cvar("viewmodel_offset_x", v_locals.x)
    client.set_cvar("viewmodel_offset_y", v_locals.y)
    client.set_cvar("viewmodel_offset_z", v_locals.z)
end

client.set_event_callback("paint_ui", function()
    if ui.get(menu.visualsTab.viewmodel_en) then
        anim_view()
    end
end)


clamp2 = function(v, min, max) local num = v; num = num < min and min or num; num = num > max and max or num; return num end

easing, m_alpha = require "gamesense/easing", 0

scope_overlay = ui.reference('VISUALS', 'Effects', 'Remove scope overlay')

g_paint_ui = function()
	ui.set(scope_overlay, true)
end

g_paint = function()
	ui.set(scope_overlay, false)

	local width, height = client.screen_size()
	local offset, initial_position, speed, color =
		ui.get(menu.visualsTab.custom_offset) * height / 1080, 
		ui.get(menu.visualsTab.custom_initial_pos) * height / 1080, 
		4, { ui.get(menu.visualsTab.custom_color) }

	local me = entity.get_local_player()
	local wpn = entity.get_player_weapon(me)

	local scope_level = entity.get_prop(wpn, 'm_zoomLevel')
	local scoped = entity.get_prop(me, 'm_bIsScoped') == 1
	local resume_zoom = entity.get_prop(me, 'm_bResumeZoom') == 1

	local is_valid = --[[entity.is_alive(me) and ]]wpn ~= nil and scope_level ~= nil
	local act = is_valid and scope_level > 0 and scoped and not resume_zoom

	local FT = speed > 3 and globals.frametime() * speed or 1
	local alpha = easing.linear(m_alpha, 0, 1, 1)

	renderer.gradient(width/2 - initial_position + 2, height / 2, initial_position - offset, 1, color[1], color[2], color[3], 0, color[1], color[2], color[3], alpha*color[4], true)
	renderer.gradient(width/2 + offset, height / 2, initial_position - offset, 1, color[1], color[2], color[3], alpha*color[4], color[1], color[2], color[3], 0, true)

	renderer.gradient(width / 2, height/2 - initial_position + 2, 1, initial_position - offset, color[1], color[2], color[3], 0, color[1], color[2], color[3], alpha*color[4], false)
	renderer.gradient(width / 2, height/2 + offset, 1, initial_position - offset, color[1], color[2], color[3], alpha*color[4], color[1], color[2], color[3], 0, false)
	
	m_alpha = clamp2(m_alpha + (act and FT or -FT), 0, 1)
end

ui_callback = function(c)
	local master_switch, addr = ui.get(c), ''

	if not master_switch then
		m_alpha, addr = 0, 'un'
	end
	
	local _func = client[addr .. 'set_event_callback']

	_func('paint_ui', g_paint_ui)
	_func('paint', g_paint)
end

ui.set_callback(menu.visualsTab.custom_scope, ui_callback)
ui_callback(menu.visualsTab.custom_scope)


start_time = client.unix_time()
function get_elapsed_time()
    local elapsed_seconds = client.unix_time() - start_time
    local hours = math.floor(elapsed_seconds / 3600)
    local minutes = math.floor((elapsed_seconds - hours * 3600) / 60)
    local seconds = math.floor(elapsed_seconds - hours * 3600 - minutes * 60)
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

icon_texture = renderer.load_png(readfile("csgo/materials/panorama/images/amnesia_water.png"))


lerp = function(start, vend, time)
    return start + (vend - start) * time
end

current_aspect = 0
target_aspect = 0

animation_speed2 = 0.1
function update_aspect()
    if ui.get(menu.visualsTab.asp) then
        target_aspect = ui.get(menu.visualsTab.asp_v) / 50
    else
        target_aspect = 0
    end
end

function animate_aspect()
    current_aspect = lerp(current_aspect, target_aspect, animation_speed2)

    client.set_cvar("r_aspectratio", current_aspect)
end

client.set_event_callback("paint", function()
    animate_aspect()
end)

ui.set_callback(menu.visualsTab.asp, update_aspect)
ui.set_callback(menu.visualsTab.asp_v, update_aspect)


function tpdistance()
    if ui.get(menu.visualsTab.third_) then
	    client.exec("cam_idealdist ", ui.get(menu.visualsTab.third_dis))
    else
        client.exec("cam_idealdist ", 100)
    end
end
ui.set_callback(menu.visualsTab.third_dis, tpdistance)

vars.session_kills = 0
vars.hit_session = 0
vars.miss_session = 0
event_callback("aim_fire", function(e)
    wanted_dmg = e.damage
    wanted_hitbox = hitgroup_names[e.hitgroup + 1] or "?"
end)
function data_hit(e)
    local health = entity.get_prop(e.target, "m_iHealth")
    if (health <= 0) then
        data.stats.killed = data.stats.killed + 1
        vars.session_kills = vars.session_kills + 1
    end
end
function console_hit(e)
    if not ui.get(menu.miscTab.console_logs) then return end

    local function color_log(r, g, b, text)
        client.color_log(r, g, b, text .. "\0")
    end

    local who = entity.get_player_name(e.target)
    local group = hitgroup_names[e.hitgroup + 1] or "?"
    local dmg = e.damage
    local health = entity.get_prop(e.target, "m_iHealth")
    local bt = globals.tickcount() - e.tick
    local hc = math.floor(e.hit_chance)

    local r, g, b, a = ui.get(calar)

    local is_alive = health ~= 0
    local prefix = is_alive and "hitted" or "killed"
    local color = is_alive and {r, g, b} or {255, 50, 50}

    color_log(color[1], color[2], color[3], "anoflow ~ ")
    color_log(color[1], color[2], color[3], prefix .. " ")
    color_log(200, 200, 200, who .. " ")
    color_log(color[1], color[2], color[3], "in " .. group .. " ")
    color_log(200, 200, 200, "(" .. dmg .. "dmg) ")

    if is_alive then
        color_log(200, 200, 200, "| " .. health .. "hp ")
    end

    color_log(200, 200, 200, "| bt:" .. bt .. "t ")
    color_log(200, 200, 200, "| hc:" .. hc .. "%\n")
end

function console_log(e)
    if not ui.get(menu.miscTab.console_logs) then return end

    local function color_log(r, g, b, text)
        client.color_log(r, g, b, text .. "\0")
    end

    local who = entity.get_player_name(e.target)
    local group = hitgroup_names[e.hitgroup + 1] or "?"
    local reason = e.reason
    local bt = globals.tickcount() - e.tick
    local hc = math.floor(e.hit_chance)

    if reason == "?" then
        if ui.get(menu.miscTab.console_logs_custom_vibor) then
            if ui.get(menu.miscTab.console_logs_resolver) == "resolver" then
                reason = "resolver"
            elseif ui.get(menu.miscTab.console_logs_resolver) == "unknown" then
                reason = "unknown"
            elseif ui.get(menu.miscTab.console_logs_resolver) == "correction" then
                reason = "correction"
            elseif ui.get(menu.miscTab.console_logs_resolver) == "custom" then
                reason = ui.get(menu.miscTab.console_logs_custom)
            end
        else
            reason = "?"
        end
    end

    local r, g, b, a = ui.get(calar)

    local highlight_color = {r, g, b}
    if e.reason == "spread" then
        highlight_color = {255, 255, 0}
    elseif e.reason == "?" then
        highlight_color = {255, 165, 0}
    end

    color_log(highlight_color[1], highlight_color[2], highlight_color[3], "anoflow nebula ~ ")
    color_log(200, 200, 200, "missed to ")
    color_log(highlight_color[1], highlight_color[2], highlight_color[3], who .. " ")
    color_log(200, 200, 200, "in ")
    color_log(highlight_color[1], highlight_color[2], highlight_color[3], group .. " ")
    color_log(200, 200, 200, "due to ")
    color_log(highlight_color[1], highlight_color[2], highlight_color[3], reason .. " ")
    color_log(200, 200, 200, "| bt:" .. bt .. " ")
    color_log(200, 200, 200, "| hc:" .. hc .. "%\n")
end

function aim_hit_logs(e)
    local group = hitgroup_names[e.hitgroup + 1] or "?"


    if ui.get(menu.visualsTab.on_screen_logs) and func.includes(ui.get(menu.visualsTab.on_screen_v), "Aim hitted") then
        notif:new(3, string.format("Hit \a75DB67FF%s \aFFFFFFFFin \a75DB67Ff%s \aFFFFFFFFfor \a75DB67FF%d \aFFFFFFFFdamage", entity.get_player_name(e.target), group, e.damage)) 
    end
end

function aim_miss_logs(e)
    local group = hitgroup_names[e.hitgroup + 1] or "?"

    if ui.get(menu.visualsTab.on_screen_logs) and func.includes(ui.get(menu.visualsTab.on_screen_v), "Aim missed") then
        notif:new(3, string.format("Miss \aE05C5CFF%s \aFFFFFFFFin \aE05C5CFF%s \aFFFFFFFFdue to \aE05C5CFF%s", entity.get_player_name(e.target), group, e.reason), 255,255,255,255)
    end
end

lastmiss2 = 0
last_hurt_time = 0

event_callback("player_hurt", function(cmd)
    local victim = client.userid_to_entindex(cmd.userid)
    if victim == entity.get_local_player() then
        last_hurt_time = globals.curtime()
    end
end)
local evaded_ = 0

event_callback("bullet_impact", function(cmd)
    if not entity.is_alive(entity.get_local_player()) then return end
    local ent = client.userid_to_entindex(cmd.userid)
    if ent ~= client.current_threat() then return end
    if entity.is_dormant(ent) or not entity.is_enemy(ent) then return end

    if globals.curtime() - last_hurt_time < 0.5 then return end

    local ent_origin = { entity.get_prop(ent, "m_vecOrigin") }
    ent_origin[3] = ent_origin[3] + entity.get_prop(ent, "m_vecViewOffset[2]")
    local local_head = { entity.hitbox_position(entity.get_local_player(), 0) }
    local closest = GetClosestPoint(ent_origin, { cmd.x, cmd.y, cmd.z }, local_head)
    local delta = { local_head[1]-closest[1], local_head[2]-closest[2] }
    local delta_2d = math.sqrt(delta[1]^2+delta[2]^2)

    if math.abs(delta_2d) <= 80 and math.abs(delta_2d) >= 1 and globals.curtime() - lastmiss2 > 0.015 then
        evaded_ = evaded_ + 1
        if ui.get(menu.visualsTab.on_screen_logs) and func.includes(ui.get(menu.visualsTab.on_screen_v), "Enemy shot") then
            notif:new(3, "Evaded shot from: "..entity.get_player_name(ent) .. " [" .. evaded_ .. "]")
        end
        lastmiss2 = globals.curtime()
        data.stats.evaded = data.stats.evaded + 1
    end
end)

event_callback('paint_ui', function ()
    local isAATab = ui.get(tabPicker) == " Anti-aims" and ui.get(aaTabs) == " Settings"
    if isAATab then
        traverse_table_on(binds)
        else
            traverse_table(binds)
    end 
end)


dragging2 = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if q ~= s or r ~= t then
                    self:set(s, t)
                end
                return s, t
            end,
            set = function(self, q, r)
                local j, k = client.screen_size()
                ui.set(self.x_reference, q / j * self.res)
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local j, k = client.screen_size()
                return ui.get(self.x_reference) / self.res * j, ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local j, k = client.screen_size()
        local y = ui.new_slider('LUA', 'A', u .. ' window position', 0, x, v / j * x)
        local z = ui.new_slider('LUA', 'A', '\n' .. u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(y, false)
        ui.set_visible(z, false)
        return setmetatable({ name = u, x_reference = y, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                q, r = q + d - f, r + e - g
                if not D then
                    q = math.max(0, math.min(j - A, q))
                    r = math.max(0, math.min(k - B, r))
                end
            end
        end

        table.insert(l, { q, r, A, B })
        return q, r, A, B
    end

    return a
end)()


dragginger = (function()
    local a = {}
    local b, c, d, e, f, g, h, i, j, k, l, m, n, o

    local p = {
        __index = {
            drag = function(self, ...)
                local q, r = self:get()
                local s, t = a.drag(q, r, ...)
                if q ~= s or r ~= t then
                    self:set(s, t)
                end
                return s, t
            end,
            set = function(self, q, r)
                local j, k = client.screen_size()
                ui.set(self.x_reference, q / j * self.res)
                ui.set(self.y_reference, r / k * self.res)
            end,
            get = function(self)
                local j, k = client.screen_size()
                return ui.get(self.x_reference) / self.res * j, ui.get(self.y_reference) / self.res * k
            end
        }
    }

    function a.new(u, v, w, x)
        x = x or 10000
        local j, k = client.screen_size()
        local y = ui.new_slider('LUA', 'A', u .. ' window position', 0, x, v / j * x)
        local z = ui.new_slider('LUA', 'A', '\n' .. u .. ' window position y', 0, x, w / k * x)
        ui.set_visible(y, false)
        ui.set_visible(z, false)
        return setmetatable({ name = u, x_reference = y, y_reference = z, res = x }, p)
    end

    function a.drag(q, r, A, B, C, D, E)
        if globals.framecount() ~= b then
            c = ui.is_menu_open()
            f, g = d, e
            d, e = ui.mouse_position()
            i = h
            h = client.key_state(0x01) == true
            m = l
            l = {}
            o = n
            n = false
            j, k = client.screen_size()
        end

        if c and i ~= nil then
            if (not i or o) and h and f > q and g > r and f < q + A and g < r + B then
                n = true
                q, r = q + d - f, r + e - g
                if not D then
                    q = math.max(0, math.min(j - A, q))
                    r = math.max(0, math.min(k - B, r))
                end
            end
        end

        table.insert(l, { q, r, A, B })
        return q, r, A, B
    end

    return a
end)()


local panelDragger = dragginger.new("Debug Panel", 200, 200)

anoflow.level_system = {
    xp = 0,
    level = 0 
}

local level_file = "csgo/cache/level.txt"
local level_data_file = "csgo/cache/level_data.txt"

function load_level_data()
    local file_content = readfile(level_data_file)
    if file_content then
        local level, xp = file_content:match("(%d+),(%d+)")
        if level and xp then
            return tonumber(level), tonumber(xp)
        end
    end
    return 0, 0
end


function save_level_data()
    writefile(level_data_file, anoflow.level_system.level .. "," .. anoflow.level_system.xp)
end

anoflow.level_system.level, anoflow.level_system.xp = load_level_data()



function calculate_level_and_progress(level)
    local current_level = anoflow.level_system.level
    local threshold = 100 + (current_level * 100)
    local remaining_level = level

    local current_progress = (remaining_level / threshold) * 100
    return current_level, current_progress, threshold
end

function draw_progress_bar(x, y, width, height, level, r, g, b, a)

    local current_level, current_progress, threshold = calculate_level_and_progress(level)

    local filled_width = (current_progress / 100) * width

    renderer.rectangle(x, y, width, height, 50, 50, 50, a)

    renderer.rectangle(x, y, filled_width, height, r, g, b, a)

    renderer.gradient(x, y, filled_width, height, r, g, b, a, r, g, b, a, true)

    renderer.rectangle(x - 1, y - 1, width + 2, height + 2, 0, 0, 0, 150)

    renderer.text(x + width + 5, y - 4, 255, 255, 255, 255, nil, 0, "Level: " .. current_level)
    renderer.text(x + width + 5, y + 4, 255, 255, 255, 255, nil, 0, "XP: " .. level .. "/" .. threshold)

end

level_drag = dragging2.new("Level System", 100, 100)

function on_paint()
    local width, height = 100, 5
    local r, g, b, a = 0, 255, 0, 255

    local level_X, level_Y = level_drag:drag(width, height)

    draw_progress_bar(level_X, level_Y, width, height, anoflow.level_system.xp, r, g, b, a)

end

event_callback("paint", on_paint)

local my = {
    entity = entity.get_local_player()
}

event_callback("player_death", function(event)
    local target = client.userid_to_entindex(event.userid)
    local attacker = client.userid_to_entindex(event.attacker)
    --if entity.get_prop(entity.get_player_resource(), "m_iPing", target) == 0 then return end

    if target == my.entity then
        return
    end

    if target ~= my.entity and attacker == my.entity then
        anoflow.level_system.xp = anoflow.level_system.xp + client.random_int(5, 20)
        local _, _, threshold = calculate_level_and_progress(anoflow.level_system.xp)

        if anoflow.level_system.xp >= threshold then
            anoflow.level_system.level = anoflow.level_system.level + 1
            anoflow.level_system.xp = 0
        end
        save_level_data()
    end
end)
function d_lerp(a, b, t)
    return a + (b - a) * t
end

degree_to_radian = function(degree)
    return (math.pi / 180) * degree
end

angle_to_vector = function(x, y)
    local pitch = degree_to_radian(x)
    local yaw = degree_to_radian(y)
    return math.cos(pitch) * math.cos(yaw), math.cos(pitch) * math.sin(yaw), -math.sin(pitch)
end

set_movement = function(cmd, desired_pos)
    local local_player = entity.get_local_player()
    local vec_angles = {
        vector(
            entity.get_origin(local_player)
        ):to(
            desired_pos
        ):angles()
    }

    local pitch, yaw = vec_angles[1], vec_angles[2]

    cmd.in_forward = 1
    cmd.in_back = 0
    cmd.in_moveleft = 0
    cmd.in_moveright = 0
    cmd.in_speed = 0
    cmd.forwardmove = 800
    cmd.sidemove = 0
    cmd.move_yaw = yaw
end

do_return = function(cmd)
    if bot_data.start_position and bot_data.should_return then
        local lp_origin = vector(entity.get_origin(entity.get_local_player()))
        if bot_data.start_position:dist2d(lp_origin) > 5 then
            if not client.key_state(0x57) and not client.key_state(0x41) and not client.key_state(0x53) and not client.key_state(0x44) and not ui.get(refs.quickPeek[2]) then
                set_movement(cmd, bot_data.start_position)
            end
        else
            bot_data.should_return = false
            bot_data.shot_fired = false
            bot_data.reached_max_distance = false
        end
    end
end

peek_bot = function(cmd)
    ui.set(menu.miscTab.ai_peek_key, "on hotkey")
    local frametime = globals.frametime() * 15
    bot_data.lerp_distance = d_lerp(bot_data.lerp_distance, ui.get(menu.miscTab.ai_peek) and 50 or 0, frametime)

    if not ui.get(menu.miscTab.ai_peek) then return end

    if not ui.get(refs.quickPeek[2]) then
        bot_data.set_location = true
        bot_data.lerp_distance = 0
        return
    end

    local lp_eyepos = vector(client.eye_position())
    local lp_origin = vector(entity.get_origin(entity.get_local_player()))

    if bot_data.set_location then
        bot_data.start_position = lp_origin
        bot_data.set_location = false
    end

    do_return(cmd)

    local target = client.current_threat()
    if not target or entity.is_dormant(target) then return end

    if bot_data[target] == nil then
        bot_data[target] = {
            head = false,
            chest = false,
            stomach = false,
            left_arm = false,
            right_arm = false,
            left_leg = false,
            right_leg = false
        }
    end

    local enemy_origin = vector(entity.get_origin(target))

    local enemy_x, enemy_y = lp_eyepos.x - enemy_origin.x, lp_eyepos.y - enemy_origin.y
    local enemy_ang = math.atan2(enemy_y, enemy_x) * (180 / math.pi)
    local left_x, left_y, left_z = angle_to_vector(0, enemy_ang - 90)
    local right_x, right_y, right_z = angle_to_vector(0, enemy_ang + 90)

    local eye_left = vector(left_x * math.max(0, bot_data.lerp_distance - bot_data.calculate_wall_dist_left) + lp_eyepos.x, left_y * math.max(0, bot_data.lerp_distance - bot_data.calculate_wall_dist_left) + lp_eyepos.y, lp_eyepos.z)
    local eye_right = vector(right_x * math.max(0, bot_data.lerp_distance - bot_data.calculate_wall_dist_right) + lp_eyepos.x, right_y * math.max(0, bot_data.lerp_distance - bot_data.calculate_wall_dist_right) + lp_eyepos.y, lp_eyepos.z)
    local eye_left_ext = vector(left_x * bot_data.lerp_distance * 1.2 + lp_eyepos.x, left_y * bot_data.lerp_distance * 1.2 + lp_eyepos.y, lp_eyepos.z)
    local eye_right_ext = vector(right_x * bot_data.lerp_distance * 1.2 + lp_eyepos.x, right_y * bot_data.lerp_distance * 1.2 + lp_eyepos.y, lp_eyepos.z)

    bot_data.cache_eye_left = eye_left
    bot_data.cache_eye_right = eye_right

    for i, v in pairs(hitboxes.ind) do
        local hitbox = vector(entity.hitbox_position(target, v))

        local left, damage_left = client.trace_bullet(entity.get_local_player(), eye_left.x, eye_left.y, eye_left.z, hitbox.x, hitbox.y, hitbox.z, false)
        local right, damage_right = client.trace_bullet(entity.get_local_player(), eye_right.x, eye_right.y, eye_right.z, hitbox.x, hitbox.y, hitbox.z, false)

        local trace_wall_left = client.trace_line(0, eye_left.x, eye_left.y, eye_left.z, eye_left_ext.x, eye_left_ext.y, eye_left_ext.z)
        local trace_wall_right = client.trace_line(0, eye_right.x, eye_right.y, eye_right.z, eye_right_ext.x, eye_right_ext.y, eye_right_ext.z)

        if trace_wall_left ~= 1 then
            bot_data.calculate_wall_dist_left = (1 - trace_wall_left) * (70 / (70 / 100))
        else
            bot_data.calculate_wall_dist_left = 0
        end

        if trace_wall_right ~= 1 then
            bot_data.calculate_wall_dist_right = (1 - trace_wall_right) * (70 / (70 / 100))
        else
            bot_data.calculate_wall_dist_right = 0
        end

        if left or right then
            bot_data[target][hitboxes.name[v]] = true

            if left and not bot_data.right_trace_active then
                bot_data.tracer_position = eye_left
                bot_data.left_trace_active = true
            else
                bot_data.left_trace_active = false
            end

            if right and not bot_data.left_trace_active then
                bot_data.tracer_position = eye_right
                bot_data.right_trace_active = true
            else
                bot_data.right_trace_active = false
            end
        else
            bot_data[target][hitboxes.name[v]] = false
        end
    end

    if bot_data[target].head or bot_data[target].chest or bot_data[target].stomach or bot_data[target].left_arm or bot_data[target].right_arm or bot_data[target].left_leg or bot_data[target].right_leg then
        bot_data.peekbot_active = true
    else
        bot_data.peekbot_active = false
    end

    if bot_data.start_position:dist2d(lp_origin) > 70 then
        bot_data.reached_max_distance = true
    end

    if bot_data.peekbot_active and not bot_data.shot_fired and (bot_data.reload_timer < globals.realtime()) and not bot_data.reached_max_distance then
        if bot_data.peekbot_active and bot_data.left_trace_active and doubletap_charged() then
            set_movement(cmd, eye_left)
        elseif bot_data.peekbot_active and bot_data.right_trace_active and doubletap_charged() then
            set_movement(cmd, eye_right)
        end
    else
        bot_data.should_return = true
    end
end
function renderer_trace_positions()
    if ui.get(menu.miscTab.ai_peek) and ui.get(refs.quickPeek[2]) then
        local local_player = entity.get_local_player()
        if not local_player or not entity.is_alive(local_player) then return end

        local player_origin = { entity.get_origin(local_player) }

        local target = client.current_threat()
        if not target or entity.is_dormant(target) then return end

        local target_origin = { entity.get_origin(target) }

        local delta_x = target_origin[1] - player_origin[1]
        local delta_y = target_origin[2] - player_origin[2]
        local angle_to_target = math.atan2(delta_y, delta_x) * (180 / math.pi)

        local left_color = { 255, 255, 255 }
        local right_color = { 255, 255, 255 }

        if bot_data.peekbot_active then
            if bot_data.left_trace_active then
                left_color = { 100, 100, 255 }
            elseif bot_data.right_trace_active then
                right_color = { 100, 100, 255 }
            end
        end

        draw_trace_points(player_origin, angle_to_target - 90, right_color, bot_data.lerp_distance)
        draw_trace_points(player_origin, angle_to_target + 90, left_color, bot_data.lerp_distance)
    end
end

function draw_trace_points(player_origin, angle, color, lerp_distance)
    local distance = math.max(20, lerp_distance)
    local rad = math.rad(angle)
    local point_size = 4

    local base_pos = {
        x = player_origin[1] + math.cos(rad) * distance,
        y = player_origin[2] + math.sin(rad) * distance,
        z = player_origin[3]
    }

    local offsets = {
        {dx = 5, dy = 0},
        {dx = -5, dy = 0},
        {dx = 0, dy = 5},
        {dx = 0, dy = -5}
    }

    for _, offset in ipairs(offsets) do
        local rotated_x = offset.dx * math.cos(rad) - offset.dy * math.sin(rad)
        local rotated_y = offset.dx * math.sin(rad) + offset.dy * math.cos(rad)

        local point_pos = {
            base_pos.x + rotated_x,
            base_pos.y + rotated_y,
            base_pos.z + 10
        }

        local screen_x, screen_y = renderer.world_to_screen(point_pos[1], point_pos[2], point_pos[3])
        if screen_x and screen_y then
            renderer.circle(screen_x, screen_y, color[1], color[2], color[3], 255, point_size / 2, 1, 1)
        end
    end
end
local debug_table = {
    ALPHA = 0,
    target_alpha = 0,
    animation_speed = 10,
    last_update = 0,
    dt_charge = 0,
    items = {
        target = { alpha = 0, height = 0, target_alpha = 0, target_height = 0 },
        exploit = { alpha = 0, height = 0, target_alpha = 0, target_height = 0 },
        multi_points = { alpha = 0, height = 0, target_alpha = 0, target_height = 0 }
    }
}

function debug_new()
    if not ui.get(menu.visualsTab.debug_panel) then
        debug_table.ALPHA = math.max(debug_table.ALPHA - globals.frametime() * debug_table.animation_speed * 2, 0)
        return
    end

    local current_time = globals.realtime()
    local delta_time = current_time - debug_table.last_update
    debug_table.last_update = current_time

    local threat = client.current_threat()
    local target = "unknown"
    if threat then
        target = entity.get_player_name(threat) or "unknown"
    end

    local nextAttack = entity.get_prop(vars.localPlayer, "m_flNextAttack") or 0
    local nextPrimaryAttack = entity.get_prop(entity.get_player_weapon(vars.localPlayer), "m_flNextPrimaryAttack") or 0
    local dtActive = false
    local dtChargeProgress = 0
    if nextPrimaryAttack ~= nil then
        local maxTime = math.max(nextPrimaryAttack, nextAttack)
        dtActive = maxTime <= globals.curtime()
        if maxTime > globals.curtime() then
            local timeLeft = maxTime - globals.curtime()
            dtChargeProgress = math.min(1, 1 - (timeLeft / 1.5))
        else
            dtChargeProgress = 1
        end
    end

    local exploit = "FL"
    local isOs = ui.get(refs.os[1]) and ui.get(refs.os[2])
    local isFd = ui.get(refs.fakeDuck)
    local isDt = ui.get(refs.dt[1]) and ui.get(refs.dt[2])
    if isDt and not isFd then
        exploit = "DT"
    elseif isOs and not isFd then
        exploit = "OS"
    end

    local R, G, B = dtActive and 255 or 255, dtActive and 255 or 0, dtActive and 255 or 0

    local multi_points = ui.get(refs.multi_points) or {}
    local multi_points_text = nil
    if multi_points > 0 then
        multi_points_text = "MP: " .. multi_points
    end

    local active_items = {
        target = target ~= "unknown" and "TH:        " .. string.lower(target:sub(1, 7)) or nil,
        exploit = isDt and "EX:    " .. exploit or nil,
        multi_points = multi_points_text
    }

    if isDt then
        debug_table.dt_charge = debug_table.dt_charge + (dtChargeProgress - debug_table.dt_charge) * math.min(1, delta_time * debug_table.animation_speed * 2)
    else
        debug_table.dt_charge = 0
    end

    debug_table.target_alpha = next(active_items) ~= nil and 255 or 0
    debug_table.ALPHA = debug_table.ALPHA + (debug_table.target_alpha - debug_table.ALPHA) * math.min(1, delta_time * debug_table.animation_speed)

    for key, state in pairs(debug_table.items) do
        if active_items[key] then
            state.target_alpha = 255
            state.target_height = 12
        else
            state.target_alpha = 0
            state.target_height = 0
        end

        state.alpha = state.alpha + (state.target_alpha - state.alpha) * math.min(1, delta_time * debug_table.animation_speed * 2)
        state.height = state.height + (state.target_height - state.height) * math.min(1, delta_time * debug_table.animation_speed * 3)
    end

    if debug_table.ALPHA < 5 then
        return
    end

    local panelX, panelY = panelDragger:get()
    local w = 130
    local static_height = 19
    local fixed_box_height = 19

    local r, g, b, a = ui.get(calar)
    a = math.floor(debug_table.ALPHA)
    local r_bg, g_bg, b_bg, a_bg = 8, 8, 7, math.floor(debug_table.ALPHA * (140 / 255))
    local text_alpha = math.floor(debug_table.ALPHA)

    renderer_rectangle_rounded(panelX + 4, panelY, w, fixed_box_height, r_bg, g_bg, b_bg, a_bg, 4)
    solus_render.container_glow(panelX + 4, panelY, w, fixed_box_height, r, g, b, 0, a / 255, r, g, b)
    renderer.gradient(panelX + 4, panelY + 2, 2, fixed_box_height - 4, r, g, b, text_alpha, r, g, b, text_alpha, true)
    renderer.gradient(panelX + w + 2, panelY + 2, 2, fixed_box_height - 4, r, g, b, text_alpha, r, g, b, text_alpha, true)
    renderer.circle_outline(panelX + 7, panelY + 3, r, g, b, text_alpha, 3, 132, 0.4, 1.5)
    renderer.circle_outline(panelX + 7, panelY + fixed_box_height - 3, r, g, b, text_alpha, 3, 75, 0.4, 1.5)
    renderer.circle_outline(panelX + w + 1, panelY + 3, r, g, b, text_alpha, 3, 260, 0.4, 1.5)
    renderer.circle_outline(panelX + w + 1, panelY + fixed_box_height - 3, r, g, b, text_alpha, 3, 312, 0.4, 1.5)
    local text_width = renderer.measure_text(nil, "anoflow")
    local text_x = panelX + (w - text_width) / 2
    renderer.text(text_x + 20, panelY + (static_height - 10) / 2 + 4, 255, 255, 255, text_alpha, "c", nil, "Debug panel")

    local current_y = panelY + static_height
    for key, state in pairs(debug_table.items) do
        if state.height > 0.5 and active_items[key] then
            local item_alpha = math.floor(state.alpha * (a / 255))
            local text = active_items[key]
            local text_r, text_g, text_b = r, g, b

            if key == "exploit" then
                text_r, text_g, text_b = R, G, B
                text = "EX: "
                local exploit_text = exploit
                renderer.text(panelX + 5, current_y + (state.height - 10) / 2, 255, 255, 255, item_alpha, "Light", 0, text)
                renderer.text(panelX + 25, current_y + (state.height - 10) / 2, text_r, text_g, text_b, item_alpha, "Light", 0, exploit_text)

                if debug_table.dt_charge > 0 then
                    renderer.circle_outline(panelX + w - 10, current_y + state.height / 2, text_r, text_g, text_b, item_alpha, 4, 0, debug_table.dt_charge, 1.5)
                end
            else
                local prefix, value = text:match("([^:]+):%s*(.+)")
                if prefix and value then
                    renderer.text(panelX + 5, current_y + (state.height - 10) / 2, text_r, text_g, text_b, item_alpha, "Bold", 0, prefix .. ":        ")
                    renderer.text(panelX + 25, current_y + (state.height - 10) / 2, 255, 255, 255, item_alpha, "Light", 0, value)
                else
                    renderer.text(panelX + 5, current_y + (state.height - 10) / 2, text_r, text_g, text_b, item_alpha, "Light", 0, text)
                end
            end

            current_y = current_y + state.height
        end
    end

    panelDragger:drag(w + 8, fixed_box_height)
end
local match = client.find_signature('client_panorama.dll', '\x8B\x35\xCC\xCC\xCC\xCC\xFF\x10\x0F\xB7\xC0')
local weapon_raw = ffi.cast('void****', ffi.cast('char*', match) + 2)[0]
local ccsweaponinfo_t = [[
struct 
{
    char __pad_0x0000[0x1cd];
    bool hide_vm_scope;
}
]]
local get_weapon_info = vtable_thunk(2, ccsweaponinfo_t .. '*(__thiscall*)(void*, unsigned int)')
local inscope = true
view_scope = function ()
    local me = entity.get_local_player()
    if not me then return end
    local weapon = entity.get_player_weapon(me)
    if not weapon then return end
    local w_id = entity.get_prop(weapon, 'm_iItemDefinitionIndex')
    local res = get_weapon_info(weapon_raw, w_id)
    inscope = not ui.get(menu.visualsTab.weapon_scope)
    res.hide_vm_scope = inscope
end

local s_delay = 0

auto_teleport = function(cmd)
    local health = entity.get_prop(entity.get_local_player(), "m_iHealth")
    if health >= 90 then
        s_delay = 4
    elseif health < 90 then
        s_delay = 2
    end
    vel_2 = math.floor(entity.get_prop(entity.get_local_player(), "m_vecVelocity[2]"))
    if is_vulnerable() and vel_2 > 20 then
        if tickcount() % s_delay then
            cmd.discharge_pending = true
        end
        cmd.force_defensive = true
    end
end

round_rectangle = function(x, y, w, h, r, g, b, a, thickness)
    renderer.rectangle(x, y, w, h, r, g, b, a)
    renderer.circle(x, y, r, g, b, a, thickness, -180, 0.25)
    renderer.circle(x + w, y, r, g, b, a, thickness, 90, 0.25)
    renderer.rectangle(x, y - thickness, w, thickness, r, g, b, a)
    renderer.circle(x + w, y + h, r, g, b, a, thickness, 0, 0.25)
    renderer.circle(x, y + h, r, g, b, a, thickness, -90, 0.25)
    renderer.rectangle(x, y + h, w, thickness, r, g, b, a)
    renderer.rectangle(x - thickness, y, thickness, h, r, g, b, a)
    renderer.rectangle(x + w, y, thickness, h, r, g, b, a)
end

airstop = function(cmd)
    local lp = entity.get_local_player()
    local target = client.current_threat()
    local health = entity.get_prop(target, "m_iHealth")

    local function get_distance(x1, y1, z1, x2, y2, z2)
        return math.sqrt((x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2)
    end
    
    local local_player = entity.get_local_player()
    local target = client.current_threat()
    
    if local_player == nil or target == nil then
        return
    end
    
    local my_x, my_y, my_z = entity.get_origin(local_player)
    local target_x, target_y, target_z = entity.get_origin(target)

    local distance = get_distance(my_x, my_y, my_z, target_x, target_y, target_z)

    if ui.get(menu.rage_tab.air_stop) then
        if (ui.get(menu.rage_tab.air_trigger) == "On hotkey" and ui.get(menu.rage_tab.air_stop_k)) or (ui.get(menu.rage_tab.air_trigger) == "Target priority" and (ui.get(menu.rage_tab.air_target) == "Lethal" and health <= 92) or (ui.get(menu.rage_tab.air_target) == "Target is closely") and math.floor(distance) < ui.get(menu.rage_tab.air_distance)) then
            if cmd.quick_stop then
                if (globals.tickcount() - ticks) > 3 then
                    cmd.in_speed = 1
                end
            else
                ticks = globals.tickcount()
            end
        end
    end
end

function is_grenade(weapon_class)
    return weapon_class == "CBaseCSGrenade" or
           weapon_class == "CDecoyGrenade" or
           weapon_class == "CFlashbang" or
           weapon_class == "CHEGrenade" or
           weapon_class == "CIncendiaryGrenade" or
           weapon_class == "CSmokeGrenade" or
           weapon_class == "CMolotovGrenade"
end

local rotation_angle = 0
local last_update = globals.realtime()
vars.draw_prohibited_swastika = function(x, y, size, angle, thickness, r, g, b, a)
    local segments = 4
    local segment_length = size * 0.4
    local center_size = size * 0
    
    
    for i = 0, segments - 1 do
        local segment_angle = angle + (i * 90)
        local rad = math.rad(segment_angle)
        
        local x1 = x + math.cos(rad) * center_size
        local y1 = y + math.sin(rad) * center_size
        local x2 = x1 + math.cos(rad) * segment_length
        local y2 = y1 + math.sin(rad) * segment_length
        
        renderer.line(x1, y1, x2, y2, r, g, b, a, thickness)
        
        local perp_angle = segment_angle + 90
        local perp_rad = math.rad(perp_angle) 
        local x3 = x2 + math.cos(perp_rad) * segment_length * 0.6
        local y3 = y2 + math.sin(perp_rad) * segment_length * 0.6
        
        renderer.line(x2, y2, x3, y3, r, g, b, a, thickness)
    end
end

vars.gitler = function()
    if ui.get(menu.visualsTab.gitler) then
        local current_time = globals.realtime()
        rotation_angle = rotation_angle + (current_time - last_update) * ui.get(menu.visualsTab.gitler_speed) * 10
        last_update = current_time
        
        local w, h = client.screen_size()
        local r, g, b, a = ui.get(menu.visualsTab.gitler_color)
        client.exec("crosshair 0")
        vars.draw_prohibited_swastika(
            w / 2, 
            h / 2, 
            ui.get(menu.visualsTab.gitler_size), 
            rotation_angle, 
            1, 
            r, g, b, a
        )
    else
        client.exec("crosshair 1")
    end
end

event_callback("paint_ui", function()
    local me = entity.get_local_player()

    --[[if not ui.get(menu.visualsTab.zeus_warning) or elect_svg == nil or me == nil or not entity.is_alive(me) then
        return
    end]]


    for _, i in pairs(entity.get_players(true)) do
        esp_data = entity.get_esp_data(i)

        if esp_data ~= nil then

            active_weapon = entity.get_prop(i, "m_hActiveWeapon")
            if active_weapon then

                weapon_id = entity.get_prop(active_weapon, "m_iItemDefinitionIndex")
                if weapon_id == 31 then

                    x1, y1, x2, y2, a = entity.get_bounding_box(i)

                    if x1 ~= 0 and a > 0.000 then
                        renderer.texture(elect_svg, x1 - 24, y1, 25, 25, 255, 0, 0, a * 255)
                    end
                end
            end
        end
    end
end)

shit = 0
aa_disabled_until = 0

contains = function(tbl, arg)
    for index, value in next, tbl do 
        if value == arg then 
            return true end 
        end 
    return false
end

drop_nades_bind = menu.miscTab.drop_key
no_aa = true
nades = menu.miscTab.drop_multi

event_callback("setup_command", function(cmd)
    local current_time = globals.curtime()

    if current_time < aa_disabled_until then
        cmd.in_use = 1
        return
    end

    if ui.get(drop_nades_bind) and shit < 1 then
        shit = shit + 1

        local function dropGrenade(grenade_cmd, delay)
            if no_aa then
                aa_disabled_until = current_time + 0.3
            end

            client.delay_call(delay, function()
                client.exec(grenade_cmd)
            end)
        end

        if contains(ui.get(nades), "HE Grenade") then
            dropGrenade("use weapon_knife;use weapon_hegrenade;drop", 0.1)
        end
        if contains(ui.get(nades), "Smoke Grenade") then
            dropGrenade("use weapon_knife;use weapon_smokegrenade;drop", 0.15)
        end
        if contains(ui.get(nades), "Molotov") then
            dropGrenade("use weapon_knife;use weapon_molotov;use weapon_incgrenade;drop", 0.2)
        end
    elseif not ui.get(drop_nades_bind) and shit ~= 0 then
        shit = 0
    end
end)

event_callback("level_init", function()
    aa_disabled_until = globals.curtime()
end)

event_callback("paint_ui", function()
    if ui.get(menu.visualsTab.trace_target) then
        local me = entity.get_local_player()
        --[[if not entity.is_alive(me) then
            return
        end]]

        local target = client.current_threat()

        if not target then
            return
        end

        local color = {255, 255, 255, 255}
        local to_origin = vector(entity.get_origin(client.current_threat()))
        local origin_to_screen = vector(renderer.world_to_screen(to_origin.x, to_origin.y, to_origin.z))
        local screen_size = vector(client.screen_size())

        if  ((origin_to_screen.x ~= nil) and (origin_to_screen.y ~= nil)) and ((origin_to_screen.x ~= 0) and (origin_to_screen.y ~= 0)) then
            renderer.line(screen_size.x/2, screen_size.y, origin_to_screen.x, origin_to_screen.y, color[1], color[2], color[3], color[4])
        end
    end
end)

local function paint_c(color)
    local mat_system = materialsystem

    local mat1 = mat_system.find_material("vgui/hud/800")
    if mat1 then
        mat1:color_modulate(color.r, color.g, color.b)
        mat1:alpha_modulate(color.a)
    end

    local mat2 = mat_system.find_material("vgui_white")
    if mat2 then
        mat2:color_modulate(color.r, color.g, color.b)
        mat2:alpha_modulate(color.a)
    end
end

vars.engine_client = ffi.cast(ffi.typeof('void***'), client.create_interface('engine.dll', 'VEngineClient014'))
vars.console_is_visible = ffi.cast(ffi.typeof('bool(__thiscall*)(void*)'), vars.engine_client[0][11])


event_callback("paint_ui", function()
    if ui.get(menu.miscTab.console_color_e) and vars.console_is_visible(vars.engine_client) then
        local r2, g2, b2, a2 = ui.get(menu.miscTab.console_color_c)
        paint_c({r = r2, g = g2, b = b2, a = a2})
    else
        paint_c({r = 255, g = 255, b = 255, a = 255})
    end
    if (ui.get(menu.visualsTab.fpsboost) and ((func.includes(ui.get(menu.visualsTab.fps_on), "Hittable") and is_vulnerable()) or (func.includes(ui.get(menu.visualsTab.fps_on), "Fps < X") and get_fps() < ui.get(menu.visualsTab.fps_x)) )) then
        cvar.r_shadows:set_float(0)
        cvar.cl_csm_static_prop_shadows:set_float(0)
        cvar.cl_csm_shadows:set_float(0)
        cvar.cl_csm_world_shadows:set_float(0)
        cvar.cl_foot_contact_shadows:set_float(0)
        cvar.cl_csm_viewmodel_shadows:set_float(0)
        cvar.cl_csm_rope_shadows:set_float(0)
        cvar.cl_csm_sprite_shadows:set_float(0)
        cvar.r_dynamic:set_float(0)
        cvar.cl_autohelp:set_float(0)
        cvar.r_eyesize:set_float(0)
        cvar.r_eyeshift_z:set_float(0)
        cvar.r_eyeshift_y:set_float(0)
        cvar.r_eyeshift_x:set_float(0)
        cvar.r_eyemove:set_float(0)
        cvar.r_eyegloss:set_float(0)
        cvar.r_drawtracers_firstperson:set_float(0)
        cvar.r_drawtracers:set_float(0)
        cvar.fog_enable_water_fog:set_float(0)
        cvar.mat_postprocess_enable:set_float(0)
        cvar.cl_disablefreezecam:set_float(0)
        cvar.cl_freezecampanel_position_dynamic:set_float(0)
        cvar.r_drawdecals:set_float(0)
        cvar.muzzleflash_light:set_float(0)
        cvar.r_drawropes:set_float(0)
        cvar.cl_disablehtmlmotd:set_float(0)
        cvar.cl_freezecameffects_showholiday:set_float(0)
        cvar.cl_bob_lower_amt:set_float(0)
        cvar.cl_detail_multiplier:set_float(0)
        cvar.mat_drawwater:set_float(0)
        cvar.cl_showhelp:set_float(0)
        cvar.cl_autohelp:set_float(0)
        cvar.cl_disablehtmlmotd:set_float(1)
        cvar.glow_outline_effect_enable:set_float(0)
        cvar.r_lightinterp:set_float(0)
        cvar.r_ambientfraction:set_float(0.1)
        cvar.snd_mixahead:set_float(0.1)
        cvar.func_break_max_pieces:set_float(0)
        cvar.r_drawsprites:set_float(0)
        cvar.fog_enable:set_float(0)
    else
        cvar.fog_enable:set_float(1)
        cvar.r_shadows:set_float(1)
        cvar.cl_csm_static_prop_shadows:set_float(1)
        cvar.cl_csm_shadows:set_float(1)
        cvar.cl_csm_world_shadows:set_float(1)
        cvar.cl_foot_contact_shadows:set_float(1)
        cvar.cl_csm_viewmodel_shadows:set_float(1)
        cvar.cl_csm_rope_shadows:set_float(1)
        cvar.cl_csm_sprite_shadows:set_float(1)
        cvar.r_dynamic:set_float(1)
        cvar.cl_autohelp:set_float(1)
        cvar.r_eyesize:set_float(1)
        cvar.r_eyeshift_z:set_float(1)
        cvar.r_eyeshift_y:set_float(1)
        cvar.r_eyeshift_x:set_float(1)
        cvar.r_eyemove:set_float(1)
        cvar.r_eyegloss:set_float(1)
        cvar.r_drawtracers_firstperson:set_float(1)
        cvar.r_drawtracers:set_float(1)
        cvar.fog_enable_water_fog:set_float(1)
        cvar.mat_postprocess_enable:set_float(1)
        cvar.cl_disablefreezecam:set_float(1)
        cvar.cl_freezecampanel_position_dynamic:set_float(1)
        cvar.r_drawdecals:set_float(1)
        cvar.muzzleflash_light:set_float(1)
        cvar.r_drawropes:set_float(1)
        cvar.r_drawsprites:set_float(1)
        cvar.cl_disablehtmlmotd:set_float(1)
        cvar.cl_freezecameffects_showholiday:set_float(1)
        cvar.cl_bob_lower_amt:set_float(1)
        cvar.cl_detail_multiplier:set_float(1)
        cvar.mat_drawwater:set_float(1)
    end
end)

ui.set_callback(menu.miscTab.filtercons, function()
    if menu.miscTab.filtercons then
        cvar.developer:set_int(0)
        cvar.con_filter_enable:set_int(1)
        cvar.con_filter_text:set_string("IrWL5106TZZKNFPz4P4Gl3pSN?J370f5hi373ZjPg%VOVh6lN")
        client.exec("con_filter_enable 1")
    else
        cvar.con_filter_enable:set_int(0)
        cvar.con_filter_text:set_string("")
        client.exec("con_filter_enable 0")
    end
end)


event_callback("shutdown", function()
    -- ui.set(refs.view_color[2], def_alpha)
    cvar.con_filter_enable:set_int(0)
    cvar.con_filter_text:set_string("")
    client.exec("con_filter_enable 0")
    ui.set(ref.aimbot, true)
    client.set_clan_tag("\0")
    traverse_table_on(refs)
    ui.set(silent_a, true)
end)
event_callback("paint", LPH_JIT(function()
    if not entity.get_local_player() then return end
    if not ui.get(menu.rage_tab.auto_tp_indicator_disable) then
        doubletap_ref = ui.get(refs.dt[1]) and ui.get(refs.dt[2])
        if ui.get(menu.rage_tab.auto_tp) and ui.get(menu.rage_tab.auto_tpHotkey) and doubletap_ref and not is_vulnerable() then
            renderer.indicator(215,211,213,255, "TELEPORT")
        end
        if ui.get(menu.rage_tab.auto_tp) and ui.get(menu.rage_tab.auto_tpHotkey) and not doubletap_ref then
            renderer.indicator(215,1,1,255, "TELEPORT")
        end
        if ui.get(menu.rage_tab.auto_tp) and ui.get(menu.rage_tab.auto_tpHotkey) and doubletap_ref and is_vulnerable() then
            renderer.indicator(143, 194, 21, 255, "TELEPORTING")
        end
    end
    if ui.get(menu.rage_tab.air_stop) and ui.get(menu.rage_tab.air_stop_k) then
        renderer.indicator(215,211,213, 255, "AIR-STOP")
    end
    if ui.get(menu.rage_tab.aim_tools_delay_ind) and ui.get(menu.rage_tab.aim_tools_delay_shot) then
        if vars.dl_shot then
            renderer.indicator(215,211,213,255, "DELAY SHOT")
        elseif not vars.dl_shot then
            renderer.indicator(215,1,1,255, "DELAY SHOT")
        end
    end
    debug_new()
    animation_fix()
    vars.keylist()
    vars.gitler()
end))

event_callback("net_update_end", LPH_JIT(function()
    if ui.get(menu.rage_tab.ai_.multi_points) and (wpnindx == 40) and (ai_.values.default_multi_points ~= nil) then
        ui.set(refs.multi_points, ai_.values.multi_points)
    end
    -- print(ai_.values.multi_points)
end))
event_callback("setup_command", LPH_JIT_MAX(function(cmd)
    if ui.get(menu.rage_tab.aim_tools_enable) then
        aimtools_debug()
    end
    peek_bot(cmd)
    airstop(cmd)
    if ui.get(menu.rage_tab.ai_.multi_points) then
        ai_.multi_points()
    end
    fastladder(cmd)
    map_cashe()
    jumpscout(cmd)
    charge_dt()
    if ui.get(menu.rage_tab.auto_tp) and ui.get(menu.rage_tab.auto_tpHotkey) then
        auto_teleport(cmd)
    end
    flick_test(cmd)
end))

event_callback("aim_miss", LPH_JIT(function(e) 
    aim_miss_logs(e)
    console_log(e)
    if ui.get(menu.rage_tab.rs_mode) == "Random brute" then
        on_miss_resolver(e)
    end
    on_aim_miss_resolver(e)
    vars.miss_session = vars.miss_session + 1
end))

event_callback("aim_hit", LPH_JIT(function(e) 
    data_hit(e)
    aim_hit_logs(e)
    console_hit(e)
    vars.hit_session = vars.hit_session + 1
end))

event_callback("run_command", view_scope)

event_callback('paint_ui', LPH_JIT(function()
    -- if ui.get(menu.custTab.info_panel_pos) == "Up" then
    --     g_paint_handler()
    -- elseif ui.get(menu.custTab.info_panel_pos) == "Down" then
    --     g_paint_handler_u()
    -- end
    renderer_trace_positions()
    local target = client.current_threat()
    if target then local threat_origin = vector(entity.get_origin(target)) threat_origin_wts_x = renderer.world_to_screen(threat_origin.x, threat_origin.y, threat_origin.z) end
end))

event_callback('net_update_end', LPH_JIT(function()
    L33()
end))

