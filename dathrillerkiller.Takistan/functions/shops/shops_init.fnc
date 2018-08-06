﻿if (dtk_server)exitWith {};

private ["_data","_img","_text"];

{
	_shop = _x select 0;						
	_shop setVariable ['shop_data',_forEachIndex,false];
	_marker = createMarkerLocal [("shop_" + str _ForEachIndex), getPos (_x select 0)];
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTextlocal (_x select 1 select 1);
	_marker setMarkerAlphaLocal 1;

	_data = _x select 1;
	_img = _data select 0;
	_img = if (_img != "")then {format ["data\images\tags\%1",_img]}else{""};
	_text = _data select 1;
	
	(_x select 0) addaction ["","noscript.sqf",format["[%1]call shops_openshop;",_ForEachIndex], 25, false, true, "LeanRight",format ["player distance _target < 5 && {!([_target,'%2','%1']call tag_show)}",_img,_text]];
}forEach INV_ItemShops;