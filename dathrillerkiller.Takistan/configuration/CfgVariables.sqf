﻿INV_drogenusesperre = 0;
INV_drogen_usesperre = FALSE;
INV_DrogenCounter = 0;

/*Main*/
pickingup   		 = false;
halfwaythereallfiredup = false;

AR_playerString = str player;

/*Fishing Arrays*/
INV_FarmItemArray =
[
[[["lsdfield",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["lsdfield_1",30]],"Unprocessed_lsd",15,4,["Man"]], 
[[["cocainefield_4_1",30]],"Unprocessed_cocaine",20,9,["Man"]],
[[["herionfield_2",30]],"Unprocessed_Heroin",20,9,["Man"]],
[[["potfield_3",30]],"Unprocessed_Marijuana",20,9,["Man"]],

[[["DiamondArea",20]],"Diamond rock",15,1,["Man"]],
[[["farmarea2",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["farmarea3",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["sandarea",70]],"sand",15,5,["Man"]],
[[["sandarea1",70]],"sand",15,5,["Man"]],
[[["apfelfeld1",50]],"apple",10,5,["Man"]]
];
Miningarray =
[
	[["IronArea",30],"iron",12],
	[["GoldArea",15],"gold",12],
	[["GoldArea1",15],"gold",12],
	[["CopperArea",30],"copper",12],
	[["CopperArea1",30],"copper",12]
];

/*bank Vars*/
maxinsafe                = 300000;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
robenable              	 = true;     
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell];
/*Lottery*/
playing_lotto = 0;

LottoArray = 
[
["lotto1", 	"Penny Saver Scratch Card",	 		100,		1000],							
["lotto2", 	"Money Lover Scratch Card",		    2500,       15000],	
["lotto3", 	"Big Bucks Scratch Card",         	10000,  	70000],								
["lotto4",	"Fortune Scratch Card",			25000, 	    175000]
];

LottoFlags = 									
[
	[gasstation1,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation2,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation3,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation4,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation5,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation6,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation7,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[northsupermarket,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation8,["lotto1", "lotto2", "lotto3", "lotto4"]],
	[gasstation9,["lotto1", "lotto2", "lotto3", "lotto4"]]
];

LottoLocations = [gasstation1,gasstation2,gasstation3,gasstation4,gasstation5,gasstation6,gasstation7,northsupermarket,gasstation8,gasstation9];

/*WorkPlaceSettings*/
workplacejob_taxi_zielarray	 = 
[
	[4563.42,2440.36,0],
	[4556.67,2444.96,0],
	[8051.28,1839.11,0],
	[3711.54,2949.25,0],
	[7703.09,2010.78,0],
	[5372.17,1819.56,0],
	[5797.48,3171.29,0],
	[5367.33,1822.21,0],
	[5369.69,1823.64,0],
	[5280.19,1764.8,0],
	[6506.02,3056.54,0],
	[5371.55,1822.2,0],
	[4765.55,5522.06,0],
	[6615.34,5709.6,0],
	[7782.44,4317.35,0],
	[3684.25,3144.21,0],
	[6933.7,3637.72,0],
	[4607.19,3795.98,0],
	[3767.33,3015.55,0],
	[2690.58,2759.59,0]
];

workplacejob_taxi_sperrzeit	 = 0.01;																						
workplacejob_taxi_multiplikator  = 4;																						
workplacejob_taxi_maxmoney       = 10000;
taximaxdistance			 = 7000;
taximindistance			 = 2000;
workplacejob_assassin_break   = 10;
workplacejob_assassion_failed = false;
workplacejob_hostage_break   = 5;
workplacejob_hostage_failed = false;


/*Other*/
lockpicking = false;
isstunned                = false;
CivTimeInPrison          = 0;
isCrackingSafe			 = 0;
safeCrackFailed			 = 0;
StunActiveTime           = 0;
StunTimePerHit		 = 15;
MaxStunTime		 = 30;
bc_baitcars = [];
stolenfromtime 		 = 900;
stolenfromtimeractive	 = false;
Safecracked1 = False;
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;
wantedamountforbank = 100000;
oilsellpricedec          = 30;
oilbaseprice		 = 15000;
working=false;
coppatrolarray  = [[4045.69,2284.16,0],[3661.66,4261.21,0],[4169.17,3648.72,0],[2918,3514.07,0],[1139.32,4564.22,0],[1112.11,3782.8,0],[3025.85,4435.61,0],[2190.9,4489.62,0],[2429.91,4768.43,0],[904.459,1176.82,0],[1578.37,4739.66,0],[1972.94,4290.42,0],[1523.08,4389.92,0],[2570.85,3779.43,0],[2846.55,1488.14,0],[1483.26,2539.71,0],[727.739,2934.53,0],[1563.24,4871.82,0],[2520.61,4665.69,0]];
SigningUpForDebitCard	 = false;
slave_cost               = 40000;
HideoutLocationArray     = [];
doingSomething            = false;
nonlethalweapons	 = ["","Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS"];

civclassarray =[ "TK_CIV_Takistani01_EP1", "TK_CIV_Takistani02_EP1", "TK_CIV_Takistani03_EP1", "TK_CIV_Takistani04_EP1", "TK_CIV_Takistani05_EP1", "TK_CIV_Takistani06_EP1", "TK_CIV_Woman01_EP1", "TK_CIV_Woman02_EP1", "TK_CIV_Woman03_EP1", "TK_CIV_Worker01_EP1", "TK_CIV_Worker02_EP1", "Citizen2_EP1", "Citizen3_EP1", "CIV_EuroMan01_EP1", "CIV_EuroMan02_EP1", "Dr_Hladik_EP1", "Functionary1_EP1", "Functionary2_EP1", "Haris_Press_EP1", "Profiteer2_EP1", "TK_Soldier_Sniper_EP1", "US_Soldier_Pilot_EP1", "Doctor", "Rocker2", "Soldier_TL_PMC", "Reynolds_PMC", "Soldier_Pilot_PMC", "Soldier_M4A3_PMC", "Ry_PMC", "Dixon_PMC" ];
processscriptrunning = 0;
