private["_file", "_section", "_key", "_data", "_result","_default"];
if(count _this < 4) exitwith { 
	["Inidb: read failed not enough parameter"] call S_statsave_log;
};

_file = _this select 0;
_section 	= _this select 1;
_key = _this select 2;
_default= _this select 3;
	
_result = "iniDB" callExtension format["read;%1;%2;%3", _file, _section, _key];
_result = call compile _result;
	
if !(isNil "_result")then 
{
	if(count _result > 1) then {
		_data = _result select 1;
	} else {
		_data = "";
	};
}else{
	_data = "";
};

_data = [_data,_default] call S_statsave_Datarizer;
_data;