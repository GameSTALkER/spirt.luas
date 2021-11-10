local function contains(table, val)
    for i=1,#table do
        if table[i] == val then 
            return true
        end
    end
    return false
end


local fov_fov = Menu.FindVar("visuals", "view", "viewmodel", "fov")
local fov_x = Menu.FindVar("visuals", "view", "viewmodel", "x")
local fov_y = Menu.FindVar("visuals", "view", "viewmodel", "y")
local fov_z = Menu.FindVar("visuals", "view", "viewmodel", "z")
local fov_roll = Menu.FindVar("visuals", "view", "viewmodel", "roll")

local pistol = {4, 2, 36, 30, 64, 61, 1, 32, 3}
local heavy = {35, 25, 29, 27, 15, 28}
local smg = {17, 34, 33, 23, 24, 19, 26}
local rifel = {13, 10, 7, 16, 60, 40, 39, 8, 9, 11, 38}
local nade = {48, 46, 43, 47, 44, 45, 84, 68, 85}
local melee = {31, 59, 42, 41, 74, 80, 500, 505, 506, 507, 508, 509, 512, 514, 515, 516, 519, 520, 522, 523}
local other = {57, 49, 70, 72, 78}

local fov_pistols = Menu.SliderInt("Pistols", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_pistols = Menu.SliderInt("Pistols", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_pistols = Menu.SliderInt("Pistols", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_pistols = Menu.SliderInt("Pistols", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_pistols = Menu.SliderInt("Pistols", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_heavies = Menu.SliderInt("Heavies", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_heavies = Menu.SliderInt("Heavies", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_heavies = Menu.SliderInt("Heavies", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_heavies = Menu.SliderInt("Heavies", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_heavies = Menu.SliderInt("Heavies", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_smgs = Menu.SliderInt("SMGs", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_smgs = Menu.SliderInt("SMGs", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_smgs = Menu.SliderInt("SMGs", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_smgs = Menu.SliderInt("SMGs", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_smgs = Menu.SliderInt("SMGs", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_rifles = Menu.SliderInt("Rifles", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_rifles = Menu.SliderInt("Rifles", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_rifles = Menu.SliderInt("Rifles", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_rifles = Menu.SliderInt("Rifles", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_rifles = Menu.SliderInt("Rifles", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_nades = Menu.SliderInt("Nades", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_nades = Menu.SliderInt("Nades", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_nades = Menu.SliderInt("Nades", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_nades = Menu.SliderInt("Nades", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_nades = Menu.SliderInt("Nades", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_knifes = Menu.SliderInt("Knifes", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_knifes = Menu.SliderInt("Knifes", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_knifes = Menu.SliderInt("Knifes", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_knifes = Menu.SliderInt("Knifes", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_knifes = Menu.SliderInt("Knifes", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_other = Menu.SliderInt("Other items", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_other = Menu.SliderInt("Other items", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_other = Menu.SliderInt("Other items", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_other = Menu.SliderInt("Other items", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_other = Menu.SliderInt("Other items", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

local fov_unkweap = Menu.SliderInt("Unknown weapons", "FOV", 0, -50, 50, function(val)
    fov_fov:Set(val)
end)
local x_unkweap = Menu.SliderInt("Unknown weapons", "X", 0, -50, 50, function(val)
    fov_x:Set(val)
end)
local y_unkweap = Menu.SliderInt("Unknown weapons", "Y", 0, -50, 50, function(val)
    fov_y:Set(val)
end)
local z_unkweap = Menu.SliderInt("Unknown weapons", "Z", 0, -50, 50, function(val)
    fov_z:Set(val)
end)
local roll_unkweap = Menu.SliderInt("Unknown weapons", "ROLL", 0, -50, 50, function(val)
    fov_roll:Set(val)
end)

Cheat.RegisterCallback("events", function(event)
    if event:GetName() == "weaponhud_selection" then
        local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer()):GetPlayer()
        local weap = me:GetActiveWeapon()
        if weap ~= nil then
            local id = weap:GetWeaponID()
            print(id)

            if contains(pistol, id) then
                print('pistol detected!')
                fov_fov:Set(fov_pistols:Get())
                fov_x:Set(x_pistols:Get())
                fov_y:Set(y_pistols:Get())
                fov_z:Set(z_pistols:Get())
                fov_roll:Set(roll_pistols:Get())
            elseif contains(heavy, id) then
                print('heavy detected!')
                fov_fov:Set(fov_heavies:Get())
                fov_x:Set(x_heavies:Get())
                fov_y:Set(y_heavies:Get())
                fov_z:Set(z_heavies:Get())
                fov_roll:Set(roll_heavies:Get())
            elseif contains(smg, id) then
                print('smg detected!')
                fov_fov:Set(fov_smgs:Get())
                fov_x:Set(x_smgs:Get())
                fov_y:Set(y_smgs:Get())
                fov_z:Set(z_smgs:Get())
                fov_roll:Set(roll_smgs:Get())
            elseif contains(rifel, id) then
                print('rifle detected!')
                fov_fov:Set(fov_rifles:Get())
                fov_x:Set(x_rifles:Get())
                fov_y:Set(y_rifles:Get())
                fov_z:Set(z_rifles:Get())
                fov_roll:Set(roll_rifles:Get()):Get()
            elseif contains(nade, id) then
                print('nade detected!')
                fov_fov:Set(fov_nades:Get())
                fov_x:Set(x_nades:Get())
                fov_y:Set(y_nades:Get())
                fov_z:Set(z_nades:Get())
                fov_roll:Set(roll_nades:Get())
            elseif contains(melee, id) then
                print('melee weapon detected!')
                fov_fov:Set(fov_knifes:Get())
                fov_x:Set(x_knifes:Get())
                fov_y:Set(y_knifes:Get())
                fov_z:Set(z_knifes:Get())
                fov_roll:Set(roll_knifes:Get())
            elseif contains(other, id) then
                print('other item detected!')
                fov_fov:Set(fov_other:Get())
                fov_x:Set(x_other:Get())
                fov_y:Set(y_other:Get())
                fov_z:Set(z_other:Get())
                fov_roll:Set(roll_other:Get())
            else
                print('unknown weapon detected!')
                fov_fov:Set(fov_unkweap:Get())
                fov_x:Set(x_unkweap:Get())
                fov_y:Set(y_unkweap:Get())
                fov_z:Set(z_unkweap:Get())
                fov_roll:Set(roll_unkweap:Get())
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
r8 - 64
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
== { MELEE } == 31, 59, 42, 41, 74, 80, 500, 505, 506, 507, 508, 509, 512, 514, 515, 516, 519, 520, 522, 523
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
== { OTHER } == 57, 49, 70, 72, 78
medic - 57
c4 - 49
WEAPON_BREACHCHARGE - 70
WEAPON_TABLET - 72
WEAPON_AXE - 
WEAPON_HAMMER - 
WEAPON_SPANNER - 78
fists - 
]]--