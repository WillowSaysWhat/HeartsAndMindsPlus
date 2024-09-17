class tet_ui_dlg_scoreboard
{
	idd = -1;
	
	class ControlsBackground
	{
		class BackgroundControl
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.14648438;
			y = safeZoneY + safeZoneH * 0.18402778;
			w = safeZoneW * 0.70800782;
			h = safeZoneH * 0.63020834;
			style = 0;
			text = "";
			colorBackground[] = {0.1393,0.1382,0.1382,0.7059};
			colorText[] = {1,1,1,1};
			font = "EtelkaMonospacePro";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Title
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.24375;
			y = safeZoneY + safeZoneH * 0.18444445;
			w = safeZoneW * 0.5125;
			h = safeZoneH * 0.03222223;
			style = 0;
			text = "Scoreboard";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "EtelkaMonospacePro";
			sizeEx = (((((safezoneW / safezoneH) min 1.3) / 1.1) / 25) * 1.3);
			
		};
		class Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.743125;
			y = safeZoneY + safeZoneH * 0.18555556;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.03;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "EtelkaMonospacePro";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.4) / 1.8) / 18) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 0;";
			
		};
		class MainBody
		{
			type = 5;
			idc = 89;
			x = safeZoneX + safeZoneW * 0.15625;
			y = safeZoneY + safeZoneH * 0.234375;
			w = safeZoneW * 0.6875;
			h = safeZoneH * 0.55555556;
			style = 16;
			colorBackground[] = {0.3402,0.3402,0.3402,0.4824};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0.8745,0.0941,1};
			colorText[] = {1,1,1,1};
			font = "EtelkaMonospacePro";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1) / 1.3) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			colorSelectBackground[] = {1,1,1,0.5059};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		
	};
	
};
