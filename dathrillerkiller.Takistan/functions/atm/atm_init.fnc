if (dtk_server)exitWith {
	{
		_object =  createVehicle ["Notebook", [0,0,0], [], 0, "CAN_COLLIDE"];
		_object attachto [_x, [+0,1.1,0.5]];
	}ForEach (nearestobjects [dtk_center, ["Misc_cargo_cont_tiny"], (dtk_center select 0)]);
};

{
	_x addaction ["","noscript.sqf","call atm_open;", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'ATM (E)','data\images\hud\7']call tag_show)}"];
}ForEach (nearestobjects [dtk_center, ["Misc_cargo_cont_tiny"], (dtk_center select 0)]);

call atm_markers;