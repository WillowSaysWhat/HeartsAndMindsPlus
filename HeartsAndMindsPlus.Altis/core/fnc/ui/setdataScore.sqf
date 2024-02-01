
/* ----------------------------------------------------------------------------
Function: tet_ui_setdatascore

Description:
    Sets the data for the user.

Parameters:
_type - The type you wish to change.
Returns:

Examples:
    (begin example)
        _result = ["kill"] call tet_ui_setdatascore;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_Change","_UID"];

	_PlayerKey = [_UID] call tet_ui_KEY;
	_playerdata = BTC_Player_array get _PlayerKey;
    _index = _playerdata splitstring ":";
    _NAME = _index select 0;
    _BUILDPERM = _index select 1;
    _SALVAGEPERM = _index select 2;
    _COMMANDPERM = _index select 3;
    _KILLS = _index select 4;
    _DEATHS = _index select 5;

    _NUMKILLS = parseNumber _KILLS;
    _NUMDEATHS = parseNumber _DEATHS;

	switch (_Change) do {
			case "KILL" : {
				_KILLS = _NUMKILLS + 1;
		};
			case "DEATH" : {
				_DEATHS = _NUMDEATHS + 1;
		};
	};

	_OUTPUT = [_NAME,_BUILDPERM,_SALVAGEPERM,_COMMANDPERM,_KILLS,_DEATHS]joinString ":";
	BTC_Player_array set [_UID,_OUTPUT];

    publicvariable "BTC_PLAYER_array";
    publicvariable "BTC_UID_array";
