class tet_fortify_preview
{
	idd = -1;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.55;
			style = 0;
			text = "";
			colorBackground[] = {0.1412,0.1373,0.1373,0.7059};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
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
			h = safeZoneH * 0.02666667;
			style = 0;
			text = "Preview";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.5) / 22) * 1.5);
			
		};
		class Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.690625;
			y = safeZoneY + safeZoneH * 0.22888889;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.02;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
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
			type = 0;
			idc = 95;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.26666667;
			w = safeZoneW * 0.393125;
			h = safeZoneH * 0.47888889;
			style = 48;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
			
		};
		
	};
	
};