
	class AR_HUD_GUI
	{
		idd = -1;
		fadeout=0;
		fadein=0;
		duration = 10^1000;
		name= "AR_HUD_GUI";
		onLoad = "uiNamespace setVariable ['AR_HUD_GUI', _this select 0]";
		objects[] = {};
		controls[] = {};
		class controlsBackground 
		{	
			class AR_Main_Icon:RLRPG_MainHUD_RscText
			{
				idc = 3600;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.29 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.34 / SafeZoneH)));
				w = 0.29; 
				h = 0.32;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "center";
				};
			};
			
			class AR_Main_Text:RLRPG_MainHUD_RscText
			{
				idc = 3601;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.29 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.34 / SafeZoneH)));
				w = 0.29; 
				h = 0.32;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
		};
	};
	
	class ar_hud
	{
		idd = -1;
		fadeout=0;
		fadein=0;
		duration = 99999999999999999;
		name= "ar_hud";
		onLoad = "uiNamespace setVariable ['ar_hud', _this select 0]";
		objects[] = {};
		controls[] = {};
		class controlsBackground 
		{	
			class ar_veh:RLRPG_MainHUD_RscText
			{
				idc = 152;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX - 0.2;
				y = safeZoneY;
				w = 0.29; 
				h = 0.50;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "left";
				};
			};
			class ar_play:RLRPG_MainHUD_RscText
			{
				idc = 154;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX - 0.01;
				y = safeZoneY;
				w = 0.29; 
				h = 0.50;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "left";
				};
			};
			class ar_pwep:RLRPG_MainHUD_RscText
			{
				idc = 155;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + safeZoneW - 0.29;
				y = safeZoneY;
				w = 0.29; 
				h = 0.50;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
		};
	};
	
	class AR_hint
	{
		idd = -1;
		fadeout=1;
		fadein=1;
		duration = 8;
		name= "AR_hint";
		onLoad = "uiNamespace setVariable ['AR_hint', _this select 0]";
		objects[] = {};
		controls[] = {};
		class controlsBackground 
		{	
			class AR_Main_Text:RLRPG_MainHUD_RscText
			{
				idc = 153;
				type = CT_STRUCTURED_TEXT;
				size = 0.035;
				x = safeZoneX + (safeZoneW * (1 - (0.29 / SafeZoneW)));
				y = safeZoneY + 0.1;
				w = 0.25; 
				h = 0.32;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,0.6};
				text = "";
				font = Bitstream;
				class Attributes {
					align = "center";
				};
			};
		};
	};

	class kill_feed
	{
		idd = 286;
		fadeout=2;
		fadein=0;
		duration = 10;
		name= "kill_feed";
		onLoad = "uiNamespace setVariable ['kill_feed', _this select 0]";
		objects[] = {};
		controls[] = {};
		class controlsBackground 
		{	
			class text:RLRPG_MainHUD_RscText
			{
				idc = 3600;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX;
				y = safeZoneY;
				w = SafeZoneW; 
				h = SafeZoneH;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "center";
				};
			};
		};
	};
	
	class better_chat
	{
		idd = 59;
		fadeout=2;
		fadein=0;
		duration = 10;
		name= "better_chat";
		onLoad = "uiNamespace setVariable ['better_chat', _this select 0]";
		objects[] = {};
		controls[] = {};
		class controlsBackground 
		{	
			class text:RLRPG_MainHUD_RscText
			{
				idc = 20;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX;
				y = safeZoneY;
				w = SafeZoneW; 
				h = SafeZoneH;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				align = "left";
				valign = "bottom";
				
				class Attributes {
					align = "left";
					valign = "bottom";
				};
			};
		};
	};

