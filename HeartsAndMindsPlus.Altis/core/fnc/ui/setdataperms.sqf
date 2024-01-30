
/* ----------------------------------------------------------------------------
Function: tet_ui_setdataperms

Description:
    Sets the data for the user.

Parameters:
_type - The type you wish to change.
Returns:

Examples:
    (begin example)
        _result = [DenyBuild] call tet_ui_setdataperms;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_Change"];

[{
    params ["_selected"];



	switch (_change) do {
			case "AllowBuild" : {
				
		};
			case "DenyBuild" : {
				
		};
			case "AllowSalvage" : {
				
		};
			case "DenySalvage" : {
				
		};
			case "AllowCommand" : {
				
		};
			case "DenyCommand" : {
				
		};
	};
	
	BTC_Player_array set [_uid,_data];


}, [lbData [88, lbCurSel 88]], 0.5] call CBA_fnc_waitAndExecute;