
/* ----------------------------------------------------------------------------
Function: tet_ui_loadscores

Description:
    Collects users from the array and displays them within the dlg

Parameters:


Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_loadscores;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

lbClear 89;
for "_i" from 0 to ((count BTC_Player_array) -1) do {

    _array = keys BTC_Player_array;
    _PLAYERKEY =  _array select _i;
    _playerdata = BTC_Player_array get _PLAYERKEY;
    _index = _playerdata splitstring ":";

    _UID = BTC_UID_array get _PLAYERKEY;

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


    private _displayout = [_NAME," |  Kills: ",_MANKILLS," |  Vehicle Kills: ",_VICKILLS," |  Aircraft Kills: ",_AIRKILLS," |  Boat Kills: ",_SEAKILLS," |  Civ Kills: ",_CIVKILLS," |  Deaths: ",_DEATHS, " | Reputation Change: ", _REPUTATION] joinString ""; //,"    |     ",
    
    private _index = lbAdd [89, _displayout];
    lbSetData [89, _index, _selected];
    if (_i isEqualTo 0) then {lbSetCurSel [89, _index];};
};




