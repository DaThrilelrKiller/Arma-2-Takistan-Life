﻿private ["_unit"];
if((vehicle player == player) && INV_isArmed) then 
{
	_unit = nearestobjects [getposatl player, ["Man"], 2] - [player];
	_unit spawn 
	{
		["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;
		sleep 0.2; 
		if(count _this > 0) then 
		{
			_unit = _this select 0;
			if(_unit distance player > 2 or !isPlayer _unit)exitwith{};
			[_unit,[player],{["hit", (_this select 0), "Melee", 1] execVM "scripts\stun.sqf"},false,false]call network_MPExec;
			systemChat  "you stunned this player!";			 
		}; 
	}; 
};