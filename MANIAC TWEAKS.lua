local hns_show_hides = Menu.Switch("MANIAC CHEATS", "SHOW HIDES (bind it)", false, function(val)
	local cheats = CVar.FindVar("sv_cheats")
	cheats:SetInt(1)
	EngineClient.ExecuteClientCmd('toggle r_drawopaquerenderables 0 1; toggle r_drawothermodels 0 1; toggle r_drawbrushmodels 1 2')

end)
local hns_mapsetup = Menu.Button("MANIAC SETUP", "APPLY MAP SETTINGS", function()
	EngineClient.ExecuteClientCmd('sv_maxspeed 10000; mp_timelimit 0; mp_roundtime_defuse 11; mp_roundtime 11; mp_roundtime_hostage 11; mp_roundtime_deployment 11; mp_limitteams 0;  mp_solid_teammates 0; mp_freezetime 3; sv_infinite_ammo 1; mp_maxrounds 30; mp_autoteambalance 0; mp_autokick 0; mp_friendlyfire 0; sv_disable_radar 1; sv_alltalk 1; sv_deadtalk 1; sv_talk_enemy_dead 0; sv_talk_enemy_living 0; sv_full_alltalk 0; sv_falldamage_scale 0; sv_cheats 0; bot_kick')

end)