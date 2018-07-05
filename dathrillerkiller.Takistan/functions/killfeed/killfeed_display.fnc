_unit = _this select 0;
_killer = _this select 1;

_name = name _unit;
_nameKiller = name _killer;
_distance = _unit distance _killer;
_weapon = currentWeapon _killer;
_image = getText (configFile >> "CfgWeapons" >> _weapon >> "Picture");
_text = "";

15 cutRsc ["kill_feed", "PLAIN"];
_display = (uiNamespace getVariable 'kill_feed');
_control = _display displayCtrl 3600;

_message = format ["<t size='0.8' align='center' shadowColor='#000000'>%1 was killed by %2 at %3m with a </t><img size='1.2' image='%4'/><br/>",_name,_nameKiller,_distance,_image];
kill_feed set [count kill_feed,_message];

{_text = _text + _x}forEach kill_feed;
["kill_feed",5]call array_trim;

_control ctrlSetStructuredText parseText _text;
_control ctrlCommit 0;