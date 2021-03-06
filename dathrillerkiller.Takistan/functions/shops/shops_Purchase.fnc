﻿private ["_weapons","_return","_data1","_item","_info","_itemcost","_costwithTax","_amount","_cost","_itemtype","_classname","_shoparray","_fahne","_crate","_logic","_license","_license1","_license2","_invspace","_menge"];

if(dtk_shopactive)exitWith {};
dtk_shopactive = true;

_return = false;
_data1 = call compile(lbData [301, (lbCurSel 301)]);
_item = _data1 select 0;
_info = _data1 select 1;
_itemcost = _data1 select 2;                 
_costwithTax = _data1 select 3;
_amount = _this select 0;

 _itemtype    = _info call config_type;                
 _classname  = _info call config_class;
 _shoparray  = (INV_ItemShops select dtk_activeShopNumber);
 _fahne      = (_shoparray select 0);  
 _crate      = (_shoparray select 2);  
 _logic      = (_shoparray select 3);
 _license    = (_shoparray select 6);
 _license1   = _info call config_license1;
 _license2   = _info call config_license2;

if (!(_amount call string_isInteger)) exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_amount = _amount call string_toInt;  
if (_amount <= 0) exitWith {};
_cost = _amount*_costwithTax; 
 
if !([_cost,false,_info,0] call shops_ProcessMoney)exitWith {systemChat "you do not have enought money";dtk_shopactive = false;};
if (!(_license1 call licenses_has) and dtk_civ and _license) exitWith {systemChat  format[localize "STRS_inv_buyitems_nolicense", (_license1 call licenses_name)];dtk_shopactive = false;};

switch(_itemtype)do
{
	case "Item":
	{
		_invspace   = [player]call storage_kg;
		_menge = (floor((dtk_player_storage - _invspace) / (_info call config_weight)));	
		if (_menge <= 0) exitWith {
			systemChat  localize "STRS_inv_buyitems_maxgewicht"; 
			_return = false;
		};	
		[player,_item,_amount] call storage_add;
		_return = true;
	};
	case "weapon":
	{
		
		[_className, _amount, _crate] call INV_CreateWeapon;
		_return = true;
	};
	case "magazin":
	{
		[_className, _amount, _crate] call INV_CreateMag;
		_return = true;
	};
	case "vehicle":
	{
		if (_amount != 1)exitWith {
			systemchat "you can only by one vehicle silly";
			_return = false
		};
		if (not(alive player)) exitWith {};																																																										
		[_item,_logic,player,dtk_side]call shops_createVehicle;
		_return = true;
	};
	case "App":
	{
		if (_className in INVAppsInstalled)exitWith {systemChat "you already have this app installed on your device";};
		INVAppsInstalled set [count INVAppsInstalled,_className];
		_return = true;
	};
	case "siren":
	{
		_weapons = weapons (vehicle player);
		
		if (count _weapons > 2)then 
		{
			_return = false;
			systemchat "You can only have 3 sirens installed at one time, uninstall one if you want this one";
		}else
		{
			[_className,(vehicle player)]spawn  garage_InstallSiren;
			closeDialog 0;
			_return = true;
		};
	};
	case "upgrade":
	{
		[_className,(vehicle player)]spawn garage_installUpgrade;
		closeDialog 0;
		_return = true;
	};
	case "maintenance":
	{
		[_className,(vehicle player)]spawn garage_serviceVehicle;
		closeDialog 0;
		_return = true;
	};
	case "clothing":
	{
		_return = [_item]call clothing_switch;
		closeDialog 0;
	};
	default 
	{

	};
};

if (_return) then
{
	[_cost,true,_info,_amount] call shops_ProcessMoney;
	call shops_refresh;
};
dtk_shopactive = false;
