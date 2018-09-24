mounted_actions_init = if (isNil "mounted_actions_init") then { [] } else {mounted_actions_init};

{
	private["_vehicle"];
	_vehicle = _x;
	if (not(isNull _vehicle)) then {
		[_vehicle] call mounted_add_actions;
	};
} forEach mounted_actions_init;