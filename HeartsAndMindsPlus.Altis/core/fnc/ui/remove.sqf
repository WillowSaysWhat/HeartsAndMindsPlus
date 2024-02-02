/* ----------------------------------------------------------------------------
Function: tet_ui_remove

Description:
    Remove a users information from the database

Parameters:

Returns:

Examples:
    (begin example)
        _result = [_UID] call tet_ui_remove
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

[{
    params ["_UID"];

	_PlayerKey = [_UID] call tet_ui_KEY;

	BTC_Player_array deleteat _PlayerKey;
	BTC_UID_array deleteat _PlayerKey;

	publicvariable "BTC_PLAYER_array";
	publicvariable "BTC_UID_array";

	call tet_ui_loadperms;

}, [lbData [88, lbCurSel 88]], 0.5] call CBA_fnc_waitAndExecute;