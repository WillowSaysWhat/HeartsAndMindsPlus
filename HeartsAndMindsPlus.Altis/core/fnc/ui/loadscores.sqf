
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
    _entry =  _array select _i;
    _player = BTC_Player_array get _entry;
    _index = _player splitstring ":";

    _NAME = _index select 0;
    _BUILDPERM = _index select 1;
    _SALVAGEPERM = _index select 2;
    _COMMANDPERM = _index select 3;
    _KILLS = _index select 4;
    _DEATHS = _index select 5;


    private _displayout = [_NAME,"    |     ","Kills:",_KILLS,"    |     ","Deaths:",_DEATHS] joinString " ";
    
    private _index = lbAdd [89, _displayout];
    lbSetData [89, _index, _selected];
    if (_i isEqualTo 0) then {lbSetCurSel [89, _index];};
};




