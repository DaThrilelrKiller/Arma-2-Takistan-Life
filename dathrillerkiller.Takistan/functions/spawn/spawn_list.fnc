lbClear 1401;

lbAdd [1401, "                         Spawns"];
lbAdd [1401, "======================================================="];


for [{_c=0}, {_c < (count spawnpoints)}, {_c=_c+1}] do 
{
	_marker = (SpawnPoints select _c select 0);
	_condition = call compile(SpawnPoints select _c select 1);
	if (_condition)then
	{
		_name = markerText _marker;
		_posions = str(getMarkerPos _marker);
		_index = lbAdd [1401, _Name];
		lbSetData [1401, _index, _posions];	
	};
};

if !(lifeState player == "UNCONSCIOUS")then {

	if (count dtk_seasion > 0)then {

		if ((dtk_seasion select 0) == s_seasion)then {
			if ((dtk_seasion select 1) - time < 120)then {
				_name = "Last logged in possion";
				_index = lbAdd [1401, _name];
				lbSetData [1401, _index,str (dtk_seasion select 2)];
			};
		};
	};
};