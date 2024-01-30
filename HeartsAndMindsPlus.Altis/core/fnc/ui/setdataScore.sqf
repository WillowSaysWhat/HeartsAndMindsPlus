
/* ----------------------------------------------------------------------------
Function: tet_ui_setdatascore

Description:
    Sets the data for the user.

Parameters:
_type - The type you wish to change.
Returns:

Examples:
    (begin example)
        _result = [kill] call tet_ui_setdatascore;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_Change","_playerID"];

	private _uid = _selected select 0;
	private _name = _selected select 1;

	
	BTC_Player_array set [_uid,_data];

