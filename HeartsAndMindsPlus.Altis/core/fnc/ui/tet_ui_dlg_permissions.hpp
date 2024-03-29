class tet_ui_dlg_permissions
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
			colorText[] = {0.3922,0.7255,0.3843,1};
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
			h = safeZoneH * 0.03;
			style = 0;
			text = "Permissions                                                                                                                                                                 ( ALL CHANGES REQUIRE USER TO RELOG TO TAKE EFFECT ) ";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.69375;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.03;
			style = 0;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
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
			idc = 88;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.26444445;
			w = safeZoneW * 0.3925;
			h = safeZoneH * 0.39555556;
			style = 16;
			colorBackground[] = {0.3412,0.3412,0.3412,0.5059};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0.8738,0.0943,1};
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
		class AllowBuild
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.67444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = "  Allow Build";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['AllowBuild'] call tet_ui_setdataperms";
			
		};
		class DenyBuild
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.30375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = "  Deny Build";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['DenyBuild'] call tet_ui_setdataperms";
			
		};
		class ASalv
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.38375;
			y = safeZoneY + safeZoneH * 0.67444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Allow Salvage";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0,0,0,1};
			colorShadow[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['AllowSalvage'] call tet_ui_setdataperms";
			
		};
		class DSalv
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.38375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Deny Salvage";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['DenySalvage'] call tet_ui_setdataperms";
			
		};
		class AComm
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.46375;
			y = safeZoneY + safeZoneH * 0.67444445;
			w = safeZoneW * 0.0725;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Allow Command";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['AllowCommand'] call tet_ui_setdataperms";
			
		};
		class DComm
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.46375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0725;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Deny Command";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['DenyCommand'] call tet_ui_setdataperms";
			
		};
		class AFly
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.55375;
			y = safeZoneY + safeZoneH * 0.67444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Allow Flight";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['AllowFlight'] call tet_ui_setdataperms";
			
		};
		class DFly
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.55375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Deny Flight";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['DenyFlight'] call tet_ui_setdataperms";
			
		};
		class AArm
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63375;
			y = safeZoneY + safeZoneH * 0.67444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Allow Armour";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['AllowArmour'] call tet_ui_setdataperms";
			
		};
		class DArm
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63375;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = " Deny Armour";
			borderSize = 0;
			colorBackground[] = {0.1412,0.1373,0.1373,1};
			colorBackgroundActive[] = {1,0.8745,0.0941,1};
			colorBackgroundDisabled[] = {0,0,0,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.1412,0.1373,0.1373,1};
			colorFocused[] = {0.302,0.302,0.302,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.02;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['DenyArmour'] call tet_ui_setdataperms";
			
		};
		
	};
	
};

