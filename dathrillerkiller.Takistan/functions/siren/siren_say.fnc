if (dtk_server) exitWith {};
private ["_sirnobj","_sleep","_sound"];

_sirnobj = _this select 0;
_sound = _this select 1;
_sleep = _sound call siren_getSleep;

while {!isNull _sirnobj} do
{
	_sirnobj say _sound;
	sleep _sleep;
};
