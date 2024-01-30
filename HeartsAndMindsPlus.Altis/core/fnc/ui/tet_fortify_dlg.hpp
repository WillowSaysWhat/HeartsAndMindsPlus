class tet_fortify_dlg
{
	idd = -1;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.11927084;
			y = safeZoneY + safeZoneH * 0.16296297;
			w = safeZoneW * 0.76197917;
			h = safeZoneH * 0.7212963;
			style = 0;
			text = "";
			colorBackground[] = {0.1725,0.2431,0.3137,0.75};
			colorText[] = {0.0275,0.7333,0.2745,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class BuildTop
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.12988282;
			y = safeZoneY + safeZoneH * 0.171875;
			w = safeZoneW * 0.54296875;
			h = safeZoneH * 0.046875;
			style = 0;
			text = "BUILD";
			colorBackground[] = {0.1725,0.2431,0.3137,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class BODY
		{
			type = 5;
			idc = 82;
			x = safeZoneX + safeZoneW * 0.12760417;
			y = safeZoneY + safeZoneH * 0.26203704;
			w = safeZoneW * 0.58854167;
			h = safeZoneH * 0.50555556;
			style = 16;
			colorBackground[] = {0.2039,0.2863,0.3686,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.9059,0.298,0.2353,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {0.498,0.549,0.5529,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class SEARCHBAR
		{
			type = 4;
			idc = 81;
			x = safeZoneX + safeZoneW * 0.12792969;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.58886719;
			h = safeZoneH * 0.02777778;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0.1725,0.2431,0.3137,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.7529,0.2235,0.1686,1};
			colorSelectBackground[] = {0.1725,0.2431,0.3137,0.9059};
			colorText[] = {0.7412,0.7647,0.7804,1};
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
				color[] = {0.498,0.549,0.5529,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Button_0_Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.8515625;
			y = safeZoneY + safeZoneH * 0.17685186;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.03796297;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0.1725,0.2431,0.3137,1};
			colorBackgroundActive[] = {0.7529,0.2235,0.1686,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.1725,0.2431,0.3137,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
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
		class SidePanel
		{
			type = 5;
			idc = 85;
			x = safeZoneX + safeZoneW * 0.72558594;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.14355469;
			h = safeZoneH * 0.54166667;
			style = 16;
			colorBackground[] = {0.2039,0.2863,0.3686,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.7529,0.2235,0.1686,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {0.498,0.549,0.5529,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class TopPanel
		{
			type = 5;
			idc = 84;
			x = safeZoneX + safeZoneW * 0.68072917;
			y = safeZoneY + safeZoneH * 0.17870371;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.03425926;
			style = 16;
			colorBackground[] = {0.1725,0.2431,0.3137,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.7529,0.2235,0.1686,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,0};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Build
		{
			type = 1;
			idc = -1;
			x = 1.04303031;
			y = 1.01010102;
			w = 0.34838386;
			h = 0.15319866;
			style = 2;
			text = "BUILD";
			borderSize = 0;
			colorBackground[] = {0.2039,0.2863,0.3686,1};
			colorBackgroundActive[] = {0.1725,0.2431,0.3137,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.1725,0.2431,0.3137,1};
			colorShadow[] = {0.1725,0.2431,0.3137,1};
			colorText[] = {0.7412,0.7647,0.7804,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "[] call tet_fortify_select";
			
		};
	};
	
};
