SpawnPoints = [["Civ_Spawn_2","true"],["Civ_Spawn_3","true"],["Civ_Spawn_7","PMC_id"],["Civ_Spawn_9","true"]];

dtk_civ         	= true;						
iscop          	= false;	
isamedic      	= false;
dtk_sidename = "Civilian";
ar_side = "CIV";

/*DaThrillerKiller*/
USBW_Interactions = [
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];

INV_apps = [
["app_warrants","data\images\ipad\WARRANTS.PAA","[0,1,2,[""coplog""]] execVM 'scripts\maindialogs.sqf';"],
["app_civilian","data\images\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_oil","data\images\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","data\images\ipad\DMV.PAA","[player]call licenses_check"],
["app_laws","data\images\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","data\images\ipad\GANGS.PAA","closeDialog 0;call gang_open"],
["app_stockmarket","data\images\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_store","data\images\ipad\stockmarket.PAA","[(BuildingCollapesLogic call shops_index)]call shops_openshop; "],
["app_phone","data\images\ipad\PHONE.PAA","systemChat 'W.I.P';"],
["app_settings","data\images\ipad\SETTINGS.PAA","call keypress_menu"]
];

AppStoreArray = {
[
"app_phone",
"app_warrants",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket"
];
};