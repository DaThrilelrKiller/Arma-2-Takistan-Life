private ["_hud","_wephud","_name","_info","_mode"];

_hud = uiNameSpace getVariable "ar_hud";
_wephud = _hud displayCtrl 155;

_info = currentWeapon vehicle player;
_name = getText (configFile >> "cfgWeapons" >> _info >> "displayName");

_mode = (vehicle player) getVariable "ar_siren_mode";
_mode = if (isNil "_mode")then {""}else{_mode};
_siren = (vehicle player) getVariable ["dtk_siren",""];
_siren = _siren call config_displayname;

_wephud ctrlSetStructuredText parseText format [
"
%1 <br/>
%2 <br/>
%3
"
,_name
,_mode,
_siren
];