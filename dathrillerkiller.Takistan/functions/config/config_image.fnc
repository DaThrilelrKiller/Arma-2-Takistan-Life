﻿private ["_item","_return"];

_item = toLower (_this select 0);

_return = _item call {
	if (_this == "schluesselbund")exitwith {"keychain"};
	if (_this == "fishing_pole")exitwith {"fishing-pole"};
	if (_this == "cookie")exitwith {"fortune_cookie"};
	if (_this == "glass")exitwith {"glass"};
	if (_this == "gold")exitwith {"gold"};
	if (_this == "hideout")exitwith {"hideout"};
	if (_this == "idcard")exitwith {"idcard"};
	if (_this == "kanister")exitwith {"jerrycan"};
	if (_this == "lighter")exitwith {"lighter"};
	if (_this == "lockpick")exitwith {"lockpick"};
	if (_this == "woodaxe")exitwith {"axe"};
	if (_this == "lumber")exitwith {"lummber"};
	if (_this == "medikit")exitwith {"medkit"};
	if (_this == "geld")exitwith {"money"};
	if (_this == "reparaturkit")exitwith {"repairkit"};
	if (_this == "kleinesreparaturkit")exitwith {"repairkit"};
	if (_this == "sand")exitwith {"sand"};
	if (_this == "fuelline")exitwith {"syphon"};
	if (_this == "treeseed")exitwith {"tree"};
	if (_this == "emptywine")exitwith {"wine"};
	if (_this == "emptybeer")exitwith {"beer"};
	if (_this == "emptyvodka")exitwith {"wine"};
	if (_this == "emptywiskey")exitwith {"wine"};
	if (_this == "oilbarrel")exitwith {"barrels"};
	if (_this == "spikestrip")exitwith {"spikes"};
	if (_this == "debit_card")exitwith {"debitcard"};
	if (_this == "coal")exitwith {"coal"};
	if (_this == "copper")exitwith {"copper"};
	if (_this == "diamond rock")exitwith {"diamond"};
	if (_this == "diamond")exitwith {"diamond"};
	if (_this == "diamondring")exitwith {"diamond"};
	if (_this == "diamondnecklace")exitwith {"diamond"};
	if (_this == "diamondbroach")exitwith {"diamond"};
	if (_this == "donut")exitwith {"donut"};
	if (_this == "beer")exitwith {"beer"};
	if (_this == "beer2")exitwith {"beer"};
	if (_this == "vodka")exitwith {"wine"};
	if (_this == "smirnoff")exitwith {"wine"};
	if (_this == "wiskey")exitwith {"wine"};
	if (_this == "wine")exitwith {"wine"};
	if (_this == "wine2")exitwith {"wine"};
	if (_this == "marijuanaseed")exitwith {"seeds"};
	if (_this == "heroinseed")exitwith {"seeds"};
	if (_this == "cocaineseed")exitwith {"seeds"};
	if (_this == "gymmem1")exitwith {"steroids"};
	if (_this == "gymmem2")exitwith {"steroids"};
	if (_this == "gymmem3")exitwith {"steroids"};
	if (_this == "gymmem4")exitwith {"steroids"};
	if (_this == "steel")exitwith {"steel"};
	if (_this == "plastic")exitwith {"plastic"};
	if (_this == "ziptie")exitwith {"ziptie"};
	if (_this == "ziptie_bh")exitwith {"ziptie"};
	if (_this == "ziptie2")exitwith {"ziptie"};
	if (_this == "apple")exitwith {"apple"};
	if (_this == "bread")exitwith {"bread"};
	"case"
};

_return