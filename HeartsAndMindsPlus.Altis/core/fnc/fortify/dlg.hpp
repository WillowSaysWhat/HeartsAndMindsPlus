class tet_fortify_dlg
{
	idd = -1;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.17555556;
			w = safeZoneW * 0.400625;
			h = safeZoneH * 0.70888889;
			style = 0;
			text = "";
			colorBackground[] = {0.2627,0.2039,0.1412,0.8};
			colorText[] = {0.6039,0.5059,0.5294,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class BACKGROUNDINSIDETOP
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.304375;
			y = safeZoneY + safeZoneH * 0.18555556;
			w = safeZoneW * 0.393125;
			h = safeZoneH * 0.04888889;
			style = 0;
			text = "";
			colorBackground[] = {0.5255,0.5176,0.5098,1};
			colorText[] = {0.3059,0.2667,0.8706,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class BACKGROUNDINSIDEBIG
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.24444445;
			w = safeZoneW * 0.3925;
			h = safeZoneH * 0.53;
			style = 0;
			text = "";
			colorBackground[] = {0.2157,0.2314,0.1725,0.9};
			colorText[] = {0.3059,0.2667,0.8706,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class CLOSE
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.67375;
			y = safeZoneY + safeZoneH * 0.19444445;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.03;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0.6902,0.6902,0.6902,1};
			colorBackgroundActive[] = {0.6557,0.5886,0.5886,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 0;";
			
		};
		class TITLE
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.42375;
			y = safeZoneY + safeZoneH * 0.18222223;
			w = safeZoneW * 0.1775;
			h = safeZoneH * 0.05;
			style = 2+192+32;
			text = "Build Menu";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) *1.9);
			
		};
		class SELECTION
		{
			type = 5;
			idc = 82;
			x = safeZoneX + safeZoneW * 0.31375;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.3725;
			h = safeZoneH * 0.44555556;
			style = 16;
			colorBackground[] = {0.2468,0.28,0.2136,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			colorSelectBackground[] = {0.5176,0.5216,0.5137,1};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class CATEGORY
		{
			type = 4;
			idc = 81;
			x = safeZoneX + safeZoneW * 0.36375;
			y = safeZoneY + safeZoneH * 0.25444445;
			w = safeZoneW * 0.2725;
			h = safeZoneH * 0.04555556;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0.5176,0.5216,0.5137,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0,0,1};
			colorSelectBackground[] = {0,0,0,1};
			colorText[] = {0,0,0,1};
			colorPictureRight[] = {0,0,0,1};
        	colorPictureSelectedRight[] = {0,1,0,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			wholeHeight = 0.3;
			onLBSelChanged = "[] call tet_fortify_getobjects;";
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class BUILD
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.60375;
			y = safeZoneY + safeZoneH * 0.82444445;
			w = safeZoneW * 0.0925;
			h = safeZoneH * 0.04888889;
			style = 2+64+1;
			text = "BUILD";
			borderSize = 0;
			colorBackground[] = {0.3569,0.3647,0.3333,1};
			colorBackgroundActive[] = {0.37,0.4508,0.2808,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "[] call tet_fortify_select";
			
		};
		class INFO1
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.78444445;
			w = safeZoneW * 0.1625;
			h = safeZoneH * 0.06;
			style = 0;
			text = "";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class INFO2
		{
			type = 5;
			idc = 84;
			x = safeZoneX + safeZoneW * 0.304375;
			y = safeZoneY + safeZoneH * 0.83222223;
			w = safeZoneW * 0.161875;
			h = safeZoneH * safeZoneH * 0.04111112;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorSelectBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
		
	};
	
};


class Tet_fortify_dlg_salvage
{
	idd = -1;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.17555556;
			w = safeZoneW * 0.400625;
			h = safeZoneH * 0.60888889;
			style = 0;
			text = "";
			colorBackground[] = {0.2627,0.2039,0.1412,0.8};
			colorText[] = {0.6039,0.5059,0.5294,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class BACKGROUNDINSIDETOP
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.304375;
			y = safeZoneY + safeZoneH * 0.18555556;
			w = safeZoneW * 0.393125;
			h = safeZoneH * 0.04888889;
			style = 0;
			text = "";
			colorBackground[] = {0.5255,0.5176,0.5098,1};
			colorText[] = {0.3059,0.2667,0.8706,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class BACKGROUNDINSIDEBIG
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.304375;
			y = safeZoneY + safeZoneH * 0.18555556;
			w = safeZoneW * 0.393125;
			h = safeZoneH * 0.04888889;
			style = 0;
			text = "";
			colorBackground[] = {0.2157,0.2314,0.1725,0.9};
			colorText[] = {0.3059,0.2667,0.8706,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class CLOSE
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.67375;
			y = safeZoneY + safeZoneH * 0.19444445;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.03;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0.6902,0.6902,0.6902,1};
			colorBackgroundActive[] = {0.6557,0.5886,0.5886,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 0;";
			
		};
		class TITLE
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.42375;
			y = safeZoneY + safeZoneH * 0.18222223;
			w = safeZoneW * 0.1775;
			h = safeZoneH * 0.05;
			style = 2+192+32;
			text = "Salvage Menu";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) *1.9);
			
		};
		class SELECTION
		{
			type = 5;
			idc = 85;
			x = safeZoneX + safeZoneW * 0.31375;
			y = safeZoneY + safeZoneH * 0.26555556;
			w = safeZoneW * 0.3725;
			h = safeZoneH * 0.44555556;
			style = 16;
			colorBackground[] = {0.2468,0.28,0.2136,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			colorSelectBackground[] = {0.5176,0.5216,0.5137,1};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class BUILD
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.59375;
			y = safeZoneY + safeZoneH * 0.71666667;
			w = safeZoneW * 0.0925;
			h = safeZoneH * 0.04888889;
			style = 2;
			text = "SALVAGE";
			borderSize = 0;
			colorBackground[] = {0.3569,0.3647,0.3333,1};
			colorBackgroundActive[] = {0.37,0.4508,0.2808,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "[] call tet_fortify_salvage";
			
		};
		class FUNDS
		{
			type = 5;
			idc = 86;
			x = safeZoneX + safeZoneW * 0.31625;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.206875;
			h = safeZoneH * 0.04555556;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorSelectBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
		
	};
	
};
