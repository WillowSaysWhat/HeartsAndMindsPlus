
/* ----------------------------------------------------------------------------
Function: tet_ui_loadperms

Description:
    Collects users from the array and displays them within the dlg

Parameters:


Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_loadperms;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

lbClear 88;
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
    _FLIGHTPERM = _index select 11;
    _ARMOURPERM = _index select 12;

    _padString = { 
    params ["_input", "_desiredLength"]; 
    
        private _currentLength = count _input; 
        private _padding = _desiredLength - _currentLength; 
        
        // Create the padding string as an array of spaces 
        private _paddingArray = []; 
        for "_i" from 1 to _padding do { 
            _paddingArray pushBack " "; 
        }; 
        
        private _paddingString = _paddingArray joinString ""; 
        _input = _input + _paddingString; 
        
        _input 
    }; 

    private _NAMEPADDED = [(format ["%1", (_NAME select [0,20])]), 20] call _padString;

    if (!(isnil "_UID") && !(isNil "_NAME")) then {
    private _displayout = [_NAMEPADDED," |","Build: ",_BUILDPERM," |","Salvage: ",_SALVAGEPERM," |","Command: ",_COMMANDPERM," |","Flight: ",_FLIGHTPERM," |","Armour: ",_ARMOURPERM] joinString "";
    private _index = lbAdd [88, _displayout];
    lbSetData [88, _index, _UID];
    //if (_i isEqualTo 0) then {lbSetCurSel [88, _index];};
    };
};