﻿_unit = _this;
_type = _unit getVariable ["type",typeOf _unit];

_config =  (missionConfigFile >> "CfgVehicles" >> _type);
_init = "";
_textures = [];

if (isClass _config)then {
	_textures = getArray(_config >>  "hiddenSelectionsTextures");
};

{
	_init = format ["%1 this setObjectTexture [%2,'%3'];",_init,_forEachIndex,_x];
}forEach _textures;

_unit setVehicleInit _init;
processInitCommands;