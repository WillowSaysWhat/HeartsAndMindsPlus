
/* ----------------------------------------------------------------------------
Function: tet_ui_setdataperms

Description:
    Sets the data for the user.

Parameters:
_type - The type you wish to change.
Returns:

Examples:
    (begin example)
        _result = ["DenyBuild"] call tet_ui_setdataperms;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_Change"];

CHANGE = _change;

[{
    params ["_UID"];

	_PlayerKey = [_UID] call tet_ui_KEY;
	_playerdata = BTC_Player_array get _PlayerKey;
    _index = _playerdata splitstring ":";

    _NAME = _index select 0;
    _BUILDPERM = _index select 1;
    _SALVAGEPERM = _index select 2;
    _COMMANDPERM = _index select 3;
    _MANKILLS = _index select 4;
    _VICKILLS = _index select 5;
    _AIRKILLS = _index select 6;
    _SEAKILLS = _index select 7;
    _CIVKILLS =  _index select 8;
    _DEATHS = _index select 9;
	_REPUTATION = _index select 10;

	switch (CHANGE) do {
			case "AllowBuild" : {
				_BUILDPERM = 1;
		};
			case "DenyBuild" : {
				_BUILDPERM = 0;
		};
			case "AllowSalvage" : {
				_SALVAGEPERM = 1;
		};
			case "DenySalvage" : {
				_SALVAGEPERM = 0;
		};
			case "AllowCommand" : {
				_COMMANDPERM = 1;
		};
			case "DenyCommand" : {
				_COMMANDPERM = 0;
		};
	};

	_OUTPUT = [_NAME,_BUILDPERM,_SALVAGEPERM,_COMMANDPERM,_MANKILLS,_VICKILLS,_AIRKILLS,_SEAKILLS,_CIVKILLS,_DEATHS, _REPUTATION]joinString ":";
	BTC_Player_array set [_PlayerKey,_OUTPUT];

	publicvariable "BTC_PLAYER_array";
	publicvariable "BTC_UID_array";

	call tet_ui_loadperms;

}, [lbData [88, lbCurSel 88]], 0.5] call CBA_fnc_waitAndExecute;