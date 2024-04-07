class tet_fortify_dlg_salvage
{
	idd = -1;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			style = 0;
			text = "";
			colorBackground[] = {0.1412,0.1373,0.1373,0.7059};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Title
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Salvage Menu";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.3) / 1.1) / 25) * 1);
			
		};
		class MainBody
		{
			type = 5;
			idc = 85;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.26444445;
			w = safeZoneW * 0.3925;
			h = safeZoneH * 0.44555556;
			style = 16;
			colorBackground[] = {0.3412,0.3412,0.3412,0.5059};
			colorDisabled[] = {0,0,0,1};
			colorSelect[] = {1,0.8745,0.0941,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			colorSelectBackground[] = {1,1,1,0.5};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class SalvageButton
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.45375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0925;
			h = safeZoneH * 0.03;
			style = 2;
			text = "Salvage";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.1412,0.1373,0.1373,0};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "[] call tet_fortify_salvage";
			
		};
		class MoneyCount
		{
			type = 5;
			idc = 84;
			x = safeZoneX + safeZoneW * 0.5225;
			y = safeZoneY + safeZoneH * 0.22888889;
			w = safeZoneW * 0.1825;
			h = safeZoneH * 0.02555556;
			style = 16;
			colorBackground[] = {0.651,0.9686,0.3608,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.69375;
			y = safeZoneY + safeZoneH * 0.22444445;
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
			font = "PuristaBold";
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
		
	};
	
};

