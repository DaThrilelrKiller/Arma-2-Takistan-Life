﻿/*
File: gear_handler.fnc
Desc: Simple gear handler that checks when a player open the gear menu
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
none
*/


private ["_display","_text","_vehicle"];

disableSerialization;
waitUntil {!isNull (findDisplay 106)};
_display = (findDisplay 106) displayCtrl 156;

_text =  (ctrlText _display);
if (_text != "")then 
{
	_vehicle = _text call gear_grabVehicle;
	
	if  (!([player,_vehicle]call keys_has) && {vehicle player != _vehicle} && {_text != "UN Basic Ammo"} && {!(_vehicle isKindof "Man")} && {_text != "Local Basic Ammunition"} && {_text != "TK Basic Weapons"})then 
	{
		(findDisplay 106) closeDisplay 1; 
		systemchat format ["(%1) you do not have the keys, sorry ;(",_text];
	};
};

waitUntil {isNull (findDisplay 106)};

[]spawn gear_handler;