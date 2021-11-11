
-- Misc functions
local function contains(table, val)
    for i=1,#table do
        if table[i] == val then 
            return true
        end
    end
    return false
end
local function RandomBool()
    local val = Utils.RandomInt(0, 1)
    if val == 0 then
        return false
    else
        return true
    end
end
-- Cheat vars
local fov = {
fov = Menu.FindVar("visuals", "view", "viewmodel", "fov"),
x = Menu.FindVar("visuals", "view", "viewmodel", "x"),
y = Menu.FindVar("visuals", "view", "viewmodel", "y"),
z = Menu.FindVar("visuals", "view", "viewmodel", "z"),
roll = Menu.FindVar("visuals", "view", "viewmodel", "roll"),
hands = Menu.FindVar("Visuals", "Entities", "Chams", "Hands", "Local"),
weap = Menu.FindVar("Visuals", "Entities", "Chams", "Weapon", "Local")
}
-- Weapons
local weaps = {
pistol = {4, 2, 36, 30, 64, 61, 1, 32, 3},
heavy = {35, 25, 29, 27, 15, 28},
smg = {17, 34, 33, 23, 24, 19, 26},
rifel = {13, 10, 7, 16, 60, 40, 39, 8, 9, 11, 38},
nade = {48, 46, 43, 47, 44, 45, 84, 68, 85},
melee = {31, 59, 42, 41, 74, 80, 500, 505, 506, 507, 508, 509, 512, 514, 515, 516, 519, 520, 522, 523, 57, 49, 70, 72, 78}
}
-- Functions for code optimizations
local function cl_righthand(val)
    if val == false then
        EngineClient.ExecuteClientCmd('cl_righthand 1')
    else
        EngineClient.ExecuteClientCmd('cl_righthand 0')
    end
end
local function toggle_hands(val)
    if val == true then
        fov.hands:Set(1)
        fov.hands:SetColor(Color.new())
    else
        fov.hands:Set(0)
    end
end
local function toggle_weapons(val)
    if val == true then
        fov.weap:Set(1)
        fov.weap:SetColor(Color.new())
    else
        fov.weap:Set(0)
    end
end

-- Menu creation
Menu.Text("WEAPON CATEGORIES", "PISTOLS")

local fov_pistols = Menu.SliderInt("WEAPON CATEGORIES", "FOV", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_pistols = Menu.SliderInt("WEAPON CATEGORIES", "X", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_pistols = Menu.SliderInt("WEAPON CATEGORIES", "Y", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_pistols = Menu.SliderInt("WEAPON CATEGORIES", "Z", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_pistols = Menu.SliderInt("WEAPON CATEGORIES", "ROLL", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_pistols = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND", false, function(val)
    cl_righthand(val)
end)
local hc_pistols = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS", false, function(val)
    toggle_hands(val)
end)
local wc_pistols = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS", false, function(val)
    toggle_weapons(val)
end)

Menu.Text("WEAPON CATEGORIES", "HEAVIES")

local fov_heavies = Menu.SliderInt("WEAPON CATEGORIES", "FOV ", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_heavies = Menu.SliderInt("WEAPON CATEGORIES", "X ", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_heavies = Menu.SliderInt("WEAPON CATEGORIES", "Y ", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_heavies = Menu.SliderInt("WEAPON CATEGORIES", "Z ", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_heavies = Menu.SliderInt("WEAPON CATEGORIES", "ROLL ", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_heavies = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND ", false, function(val)
    cl_righthand(val)
end)
local hc_heavies = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS ", false, function(val)
    toggle_hands(val)
end)
local wc_heavies = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS ", false, function(val)
    toggle_weapons(val)
end)

Menu.Text("WEAPON CATEGORIES", "SMG'S")

local fov_smgs = Menu.SliderInt("WEAPON CATEGORIES", "FOV  ", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_smgs = Menu.SliderInt("WEAPON CATEGORIES", "X  ", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_smgs = Menu.SliderInt("WEAPON CATEGORIES", "Y  ", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_smgs = Menu.SliderInt("WEAPON CATEGORIES", "Z  ", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_smgs = Menu.SliderInt("WEAPON CATEGORIES", "ROLL  ", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_smgs = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND  ", false, function(val)
    cl_righthand(val)
end)
local hc_smgs = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS  ", false, function(val)
    toggle_hands(val)
end)
local wc_smgs = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS  ", false, function(val)
    toggle_weapons(val)
end)

Menu.Text("WEAPON CATEGORIES", "RIFLES")

local fov_rifles = Menu.SliderInt("WEAPON CATEGORIES", "FOV   ", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_rifles = Menu.SliderInt("WEAPON CATEGORIES", "X   ", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_rifles = Menu.SliderInt("WEAPON CATEGORIES", "Y   ", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_rifles = Menu.SliderInt("WEAPON CATEGORIES", "Z   ", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_rifles = Menu.SliderInt("WEAPON CATEGORIES", "ROLL   ", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_rifles = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND   ", false, function(val)
    cl_righthand(val)
end)
local hc_rifles = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS   ", false, function(val)
    toggle_hands(val)
end)
local wc_rifles = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS   ", false, function(val)
    toggle_weapons(val)
end)

Menu.Text("WEAPON CATEGORIES", "NADE'S")

local fov_nades = Menu.SliderInt("WEAPON CATEGORIES", "FOV    ", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_nades = Menu.SliderInt("WEAPON CATEGORIES", "X    ", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_nades = Menu.SliderInt("WEAPON CATEGORIES", "Y    ", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_nades = Menu.SliderInt("WEAPON CATEGORIES", "Z    ", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_nades = Menu.SliderInt("WEAPON CATEGORIES", "ROLL    ", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_nades = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND    ", false, function(val)
    cl_righthand(val)
end)
local hc_nades = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS    ", false, function(val)
    toggle_hands(val)
end)
local wc_nades = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS    ", false, function(val)
    toggle_weapons(val)
end)

Menu.Text("WEAPON CATEGORIES", "MELEES")

local fov_knifes = Menu.SliderInt("WEAPON CATEGORIES", "FOV     ", 0, -50, 50, function(val)
    fov.fov:Set(val)
end)
local x_knifes = Menu.SliderInt("WEAPON CATEGORIES", "X     ", 0, -50, 50, function(val)
    fov.x:Set(val)
end)
local y_knifes = Menu.SliderInt("WEAPON CATEGORIES", "Y     ", 0, -50, 50, function(val)
    fov.y:Set(val)
end)
local z_knifes = Menu.SliderInt("WEAPON CATEGORIES", "Z     ", 0, -50, 50, function(val)
    fov.z:Set(val)
end)
local roll_knifes = Menu.SliderInt("WEAPON CATEGORIES", "ROLL     ", 0, -50, 50, function(val)
    fov.roll:Set(val)
end)
local rh_knifes = Menu.Switch("WEAPON CATEGORIES", "TOGGLE LEFTHAND     ", false, function(val)
    cl_righthand(val)
end)
local hc_knifes = Menu.Switch("WEAPON CATEGORIES", "TOGGLE HANDS     ", false, function(val)
    toggle_hands(val)
end)
local wc_knifes = Menu.Switch("WEAPON CATEGORIES", "TOGGLE WEAPONS     ", false, function(val)
    toggle_weapons(val)
end)

Menu.Button("SETTINGS", "RESET VALUES", function()

    fov_pistols:Set(0)
    fov_heavies:Set(0)
    fov_smgs:Set(0)
    fov_rifles:Set(0)
    fov_knifes:Set(0)
    fov_nades:Set(0)
    fov.fov:Set(0)

    x_pistols:Set(0)
    x_heavies:Set(0)
    x_smgs:Set(0)
    x_rifles:Set(0)
    x_knifes:Set(0)
    x_nades:Set(0)
    fov.x:Set(0)

    y_pistols:Set(0)
    y_heavies:Set(0)
    y_smgs:Set(0)
    y_rifles:Set(0)
    y_knifes:Set(0)
    y_nades:Set(0)
    fov.y:Set(0)

    z_pistols:Set(0)
    z_heavies:Set(0)
    z_smgs:Set(0)
    z_rifles:Set(0)
    z_knifes:Set(0)
    z_nades:Set(0)
    fov.z:Set(0)

    roll_pistols:Set(0)
    roll_heavies:Set(0)
    roll_smgs:Set(0)
    roll_rifles:Set(0)
    roll_knifes:Set(0)
    roll_nades:Set(0)
    fov.roll:Set(0)

    rh_pistols:Set(false)
    rh_heavies:Set(false)
    rh_smgs:Set(false)
    rh_rifles:Set(false)
    rh_knifes:Set(false)
    rh_nades:Set(false)

    hc_pistols:Set(false)
    hc_heavies:Set(false)
    hc_smgs:Set(false)
    hc_rifles:Set(false)
    hc_knifes:Set(false)
    hc_nades:Set(false)

    wc_pistols:Set(false)
    wc_heavies:Set(false)
    wc_smgs:Set(false)
    wc_rifles:Set(false)
    wc_knifes:Set(false)
    wc_nades:Set(false)

end)


local rand_from_slider = Menu.SliderInt("SETTINGS", "RANDOMIZATION FROM", 0, -50, 49)
local rand_to_slider = Menu.SliderInt("SETTINGS", "RANDOMIZATION TO", 0, -49, 50)
local rand_what = Menu.MultiCombo("SETTINGS", "WHAT TO RANDOMIZE", {"FOV", "X", "Y", "Z", "ROLL", "TOGGLE LEFTHAND", "TOGGLE HANDS", "TOGGLE WEAPONS"}, 0)

Menu.Button("SETTINGS", "RANDOMIZE VALUES", function()
    local from = rand_from_slider:Get()
    if from >= rand_to_slider:Get() then
        rand_to_slider:Set(Utils.RandomInt(from, 50))
    else
        local to = rand_to_slider:Get()
        if rand_what:Get(1) == true then
            fov_pistols:Set(Utils.RandomInt(from, to))
            fov_heavies:Set(Utils.RandomInt(from, to))
            fov_smgs:Set(Utils.RandomInt(from, to))
            fov_rifles:Set(Utils.RandomInt(from, to))
            fov_knifes:Set(Utils.RandomInt(from, to))
            fov_nades:Set(Utils.RandomInt(from, to))
            fov.fov:Set(Utils.RandomInt(from, to))
        end
        if rand_what:Get(2) == true then
            x_pistols:Set(Utils.RandomInt(from, to))
            x_heavies:Set(Utils.RandomInt(from, to))
            x_smgs:Set(Utils.RandomInt(from, to))
            x_rifles:Set(Utils.RandomInt(from, to))
            x_knifes:Set(Utils.RandomInt(from, to))
            x_nades:Set(Utils.RandomInt(from, to))
            fov.x:Set(Utils.RandomInt(from, to))
        end
        if rand_what:Get(3) == true then
            y_pistols:Set(Utils.RandomInt(from, to))
            y_heavies:Set(Utils.RandomInt(from, to))
            y_smgs:Set(Utils.RandomInt(from, to))
            y_rifles:Set(Utils.RandomInt(from, to))
            y_knifes:Set(Utils.RandomInt(from, to))
            y_nades:Set(Utils.RandomInt(from, to))
            fov.y:Set(Utils.RandomInt(from, to))
        end
        if rand_what:Get(4) == true then
            z_pistols:Set(Utils.RandomInt(from, to))
            z_heavies:Set(Utils.RandomInt(from, to))
            z_smgs:Set(Utils.RandomInt(from, to))
            z_rifles:Set(Utils.RandomInt(from, to))
            z_knifes:Set(Utils.RandomInt(from, to))
            z_nades:Set(Utils.RandomInt(from, to))
            fov.z:Set(Utils.RandomInt(from, to))
        end
        if rand_what:Get(5) == true then
            roll_pistols:Set(Utils.RandomInt(from, to))
            roll_heavies:Set(Utils.RandomInt(from, to))
            roll_smgs:Set(Utils.RandomInt(from, to))
            roll_rifles:Set(Utils.RandomInt(from, to))
            roll_knifes:Set(Utils.RandomInt(from, to))
            roll_nades:Set(Utils.RandomInt(from, to))
            fov.roll:Set(Utils.RandomInt(from, to))
        end
        if rand_what:Get(6) == true then
            rh_pistols:Set(RandomBool())
            rh_heavies:Set(RandomBool())
            rh_smgs:Set(RandomBool())
            rh_rifles:Set(RandomBool())
            rh_knifes:Set(RandomBool())
            rh_nades:Set(RandomBool())
        end
        if rand_what:Get(7) == true then
            hc_pistols:Set(RandomBool())
            hc_heavies:Set(RandomBool())
            hc_smgs:Set(RandomBool())
            hc_rifles:Set(RandomBool())
            hc_knifes:Set(RandomBool())
            hc_nades:Set(RandomBool())
        end
        if rand_what:Get(8) == true then
            wc_pistols:Set(RandomBool())
            wc_heavies:Set(RandomBool())
            wc_smgs:Set(RandomBool())
            wc_rifles:Set(RandomBool())
            wc_knifes:Set(RandomBool())
            wc_nades:Set(RandomBool())
        end
    end
end)

Cheat.RegisterCallback("events", function(event)
    if event:GetName() == "weaponhud_selection" then
        local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer()):GetPlayer()
        local weap = me:GetActiveWeapon()
        if weap ~= nil then
            local id = weap:GetWeaponID()
            if contains(weaps.pistol, id) then
                fov.fov:Set(fov_pistols:Get())
                fov.x:Set(x_pistols:Get())
                fov.y:Set(y_pistols:Get())
                fov.z:Set(z_pistols:Get())
                fov.roll:Set(roll_pistols:Get())
                cl_righthand(rh_pistols:Get())
                toggle_hands(hc_pistols:Get())
                toggle_weapons(wc_pistols:Get())
            elseif contains(weaps.heavy, id) then
                fov.fov:Set(fov_heavies:Get())
                fov.x:Set(x_heavies:Get())
                fov.y:Set(y_heavies:Get())
                fov.z:Set(z_heavies:Get())
                fov.roll:Set(roll_heavies:Get())
                cl_righthand(rh_heavies:Get())
                toggle_hands(hc_heavies:Get())
                toggle_weapons(wc_heavies:Get())
            elseif contains(weaps.smg, id) then
                fov.fov:Set(fov_smgs:Get())
                fov.x:Set(x_smgs:Get())
                fov.y:Set(y_smgs:Get())
                fov.z:Set(z_smgs:Get())
                fov.roll:Set(roll_smgs:Get())
                cl_righthand(rh_smgs:Get())
                toggle_hands(hc_smgs:Get())
                toggle_weapons(wc_smgs:Get())
            elseif contains(weaps.rifel, id) then
                fov.fov:Set(fov_rifles:Get())
                fov.x:Set(x_rifles:Get())
                fov.y:Set(y_rifles:Get())
                fov.z:Set(z_rifles:Get())
                fov.roll:Set(roll_rifles:Get())
                cl_righthand(rh_rifles:Get())
                toggle_hands(hc_rifles:Get())
                toggle_weapons(wc_rifles:Get())
            elseif contains(weaps.nade, id) then
                fov.fov:Set(fov_nades:Get())
                fov.x:Set(x_nades:Get())
                fov.y:Set(y_nades:Get())
                fov.z:Set(z_nades:Get())
                fov.roll:Set(roll_nades:Get())
                cl_righthand(rh_nades:Get())
                toggle_hands(hc_nades:Get())
                toggle_weapons(wc_nades:Get())
            elseif contains(weaps.melee, id) then
                fov.fov:Set(fov_knifes:Get())
                fov.x:Set(x_knifes:Get())
                fov.y:Set(y_knifes:Get())
                fov.z:Set(z_knifes:Get())
                fov.roll:Set(roll_knifes:Get())
                cl_righthand(rh_knifes:Get())
                toggle_hands(hc_knifes:Get())
                toggle_weapons(wc_knifes:Get())
            else
                print('unknown weapon detected!')
                fov.fov:Set(0)
                fov.x:Set(0)
                fov.y:Set(0)
                fov.z:Set(0)
                fov.roll:Set(0)
                cl_righthand(true)
                toggle_hands(false)
                toggle_weapons(false)
            end
        end
    end
end)



--[[IDS
== { PISTOLS } == 4, 61, 32, 2, 36, 30, 63, 3, 1, 64
glock - 4
usp - 61
p2000 - 32
elite - 2
p250 - 36
tec9 - 30
cz - 63
fiveseven - 3
deagle - 1
revolver - 64
== { HEAVYS } == 35, 25, 29, 27, 15, 28
nova - 35
xm1014 - 25
sawed-off - 29
mag-7 - 27
m249 - 14
negev - 28
== { SMGS } == 17, 34, 33, 23, 24, 19, 26
mac-10 - 17
mp9 - 34
mp7 - 33
mp5-sd - 23
ump-45 - 24
p90 - 19
pp-bizon - 26
== { RIFLES } == 13, 10, 7, 16, 60, 40, 39, 8, 9, 11, 38
galil - 13
famas - 10
ak47 - 7
m4a4 - 16
m4a1s - 60
ssg08 - 40
sg553 - 39
aug - 8
awp - 9
g3sg1 - 11
scar20 - 38
== { MELEE } == 31, 59, 42, 41, 74, 80, 500, 505, 506, 507, 508, 509, 512, 514, 515, 516, 519, 520, 522, 523, 57, 49, 70, 72, 78
zeus - 31
knife_t - 59
knife_ct - 42
knife_gg - 41
melee - 74
WEAPON_KNIFE_GHOST - 80
WEAPON_BAYONET - 500
WEAPON_KNIFE_FLIP - 505
WEAPON_KNIFE_GUT - 506
WEAPON_KNIFE_KARAMBIT - 507
WEAPON_KNIFE_M9_BAYONET - 508
WEAPON_KNIFE_TACTICAL - 509
WEAPON_KNIFE_FALCHION - 512
WEAPON_KNIFE_SURVIVAL_BOWIE - 514
WEAPON_KNIFE_BUTTERFLY - 515
WEAPON_KNIFE_PUSH - 516
WEAPON_KNIFE_URSUS - 519
WEAPON_KNIFE_GYPSY_JACKKNIFE - 520
WEAPON_KNIFE_STILETTO - 522
WEAPON_KNIFE_WIDOWMAKER - 523
medic - 57
c4 - 49
WEAPON_BREACHCHARGE - 70
WEAPON_TABLET - 72
WEAPON_AXE - 
WEAPON_HAMMER - 
WEAPON_SPANNER - 78
fists - 
== { NADES } == 48, 46, 43, 47, 44, 45, 84, 68, 85
inc - 48
mol - 46
flash - 43
decoy - 47
he - 44
smoke - 45
snowball - 84
tag - 68
mine - 85
]]--
