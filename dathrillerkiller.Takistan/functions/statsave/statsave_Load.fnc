﻿/*
File: fn_LoadAcount.sqf
Desc: Loads statics for a player it modular for all fractions
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_stats","_UID"];
_UID = _this select 0;
dtk_id = _this select 1;
_stats = _this select 2;
removeAllWeapons player;

if ((getPlayerUID player) != _UID)exitWith {
	systemChat format ["Almost loaded with (%1`s) stats requesting stats again",_UID];
	["SERVER",[player,dtk_side],"s_statsave_load",false,false]call network_MPExec;
};

dtk_bank = (_stats select 0);
dtk_hunger = (_stats select 1);
player setVariable ["dtk_storage",(_stats select 2), true];
player setVariable ["cdb_license",(_stats select 3),true];
INVVehiclesLand = (_stats select 4);
{player addWeapon _x}count (_stats select 5);
{player addMagazine _x} count (_stats select 6);
player setVariable ["Pistol",(_stats select 7),true];
player setVariable ["Rifle",(_stats select 8),true];
player setVariable ["x26",(_stats select 9),true];
player setVariable ["cdb_warrants",(_stats select 10),true];
player setVariable ["cdb_notes",(_stats select 11),true];
player setVariable ["cdb_bounty",(_stats select 12),true];

INVAppsInstalled = (_stats select 13);
if ((_stats select 14) == "UNCONSCIOUS")then {
["ALL",["dtk_client",format ["[RELOG DETECTION] caught %2%1 loging in after being dead, this could be a mistake", name player, player],3],"network_chat",false,false]call network_MPExec;
};
setViewDistance (_stats select 15);
setTerrainGrid (_stats select 16);
dtk_seasion = (_stats select 17);
_side = (_stats select 18);
_name = _stats select 19;
_clothing = (_stats select 20);
if (_clothing != "")then {
	[_clothing]call clothing_switch;
};

if ((_side select 0) != dtk_side && {(_side select 1) == s_seasion})then {
	["ALL",[name player,(_side select 0),dtk_side],{systemchat format ["%1 switched from %2 to %3",_this select 0,_this select 1,_this select 2];},false,true]call network_MPExec;
};

if (_name != name player && {_name != ""})then {
	["ALL",[_name,name player],{systemchat format ["%1 is now know as %2",_this select 0,_this select 1];},false,true]call network_MPExec;
};


AR_StaticsLoaded = true;