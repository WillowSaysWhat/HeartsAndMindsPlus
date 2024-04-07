
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

params ["_Change","_UID","_type","_reputationchange"];

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
        _REPUTATION1 = _index select 10;
        _FLIGHTPERM = _index select 11;
	    _ARMOURPERM = _index select 12;

        _NUMCIVKILLS = parseNumber _CIVKILLS;
        _NUMMANKILLS = parseNumber _MANKILLS;
        _NUMAIRKILLS = parseNumber _AIRKILLS;
        _NUMLANDKILLS = parseNumber _VICKILLS;
        _NUMSEAKILLS = parseNumber _SEAKILLS;
        _NUMDEATHS = parseNumber _DEATHS;
        _NUMREP = parseNumber _REPUTATION1;

	switch (_Change) do {
                case "KILL" : {
                if (side group _type == civilian) then {_CIVKILLS = _NUMCIVKILLS + 1;};
                if (_type isKindOf "Man") then {_MANKILLS = _NUMMANKILLS + 1;};
                if (_type isKindOf "Air") then {_AIRKILLS = _NUMAIRKILLS + 1;};
                if (_type isKindOf "LandVehicle") then {_VICKILLS = _NUMLANDKILLS + 1;};
                if (_type isKindOf "Ship") then {_SEAKILLS = _NUMSEAKILLS + 1;};
		};
        	case "DEATH" : {
                _DEATHS = _NUMDEATHS + 1;
		};
            case "REP" : {
            _REPUTATION1 = _NUMREP + _reputationchange;
		};
	};

    if (!(isnil "_UID") && !(isNil "_NAME")) then {
	_OUTPUT = [_NAME,_BUILDPERM,_SALVAGEPERM,_COMMANDPERM,_MANKILLS,_VICKILLS,_AIRKILLS,_SEAKILLS,_CIVKILLS,_DEATHS, _REPUTATION2, _FLIGHTPERM, _ARMOURPERM]joinString ":";
	BTC_Player_array set [_PlayerKey,_OUTPUT];
    };

        publicvariable "BTC_PLAYER_array";
        publicvariable "BTC_UID_array";
