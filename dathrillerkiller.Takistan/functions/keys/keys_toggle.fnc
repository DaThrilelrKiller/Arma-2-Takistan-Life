﻿private ["_vehicle","_name","_lock","_text"];

_vehicle = _this select 0;
_vehicle = if !(typeName _vehicle == "OBJECT")then{call keys_grabVehicle}else{_vehicle};
_name = _vehicle call vehicle_name;

_lock = !(locked _vehicle);
_text = ["locked","un-locked"]select (locked _vehicle);

[_vehicle,[_vehicle,_lock],'network_lock',false,true]call network_MPExec;
[format ["(%1) %2",_name,_text],'data\images\hud\2']call tag_notify;
