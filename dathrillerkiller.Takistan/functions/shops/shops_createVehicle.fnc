private ["_name","_location","_classname","_data","_vehicle","_pos"];
_name = _this select 0;
_location = _this select 1;
if (isNil "_location")then {
	_roads = ((getPos player) nearroads 25);
	_location = _roads select 0; 
};

_pos = if (typeName _location != "ARRAY")then {getPos _location}else{_location};



_data = [[getPlayerUID (_this select 2)],_name,(_this select 3),name player];
_classname =  _name call config_class;


		_vehicle = _classname createVehicle [0,0,0];
		_vehicle setVehicleInit format [
		"
			this setVehicleVarName ""vehicle_%2_%1"";
			vehicle_%2_%1 = this; 
			clearWeaponCargo this; 
			clearMagazineCargo this;
			this lock true;
		"
		, round(random 10), round(time)];
	
	_vehicle setPos  [_pos select 0,_pos select 1,0];
	_vehicle setDir getDir _location;
	_vehicle setVariable ["DTK_OwnerUID",_data, true];
	_vehicle setVariable ["dtk_storage",[[],[]], true];
	_vehicle addeventhandler ["HandleDamage",'_this call vehicle_handleDamage' ];

	
	_plate = _this select 4;
	if (isNil "_plate")then{
	[_vehicle] call plates_setplate;
	}else{
	[_vehicle,(_this select 4)] call plates_setplate;
	};
	
	
if (iscop || {isamedic}) then {
	if !(_classname isKindOf "Air")then 
	{
	_vehicle setVariable ["dtk_sirens",["dtk_SVPWail","dtk_SVPYelp","dtk_SVPPhaser"],true];
	};
};																			

processInitCommands;
newvehicle = _vehicle;
_vehicle