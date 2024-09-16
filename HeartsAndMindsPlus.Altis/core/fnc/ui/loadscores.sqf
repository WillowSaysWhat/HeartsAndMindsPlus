
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
    _REPUTATION4 = _index select 10;
    _FLIGHTPERM = _index select 11;
    _ARMOURPERM = _index select 12;

    // Function to pad a string with spaces to a fixed length 
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
    
    // Define the maximum length for padding 
    private _maxLength = 12;  // Adjust as needed for alignment 
    
    // Apply padding to each section 
    private _paddedMankills = [(format ["Kills: %1", _MANKILLS]), _maxLength] call _padString; 
    private _paddedVicKills = [(format ["Vehicles: %1", _VICKILLS]), 15] call _padString; 
    private _paddedAirKills = [(format ["Aircraft: %1", _AIRKILLS]), 15] call _padString; 
    private _paddedSeaKills = [(format ["Boats: %1", _SEAKILLS]), _maxLength] call _padString; 
    private _paddedCivKills = [(format ["Civs: %1", _CIVKILLS]), _maxLength] call _padString; 
    private _paddedDeaths =   [(format ["Deaths: %1", _DEATHS]), 14] call _padString; 
    private _paddedReputation = [(format ["Rep: %1", _REPUTATION4]), _maxLength] call _padString; 
    private _paddedName = [(format ["%1", _NAME]), 25] call _padString; 
    
    // Combine into final output 
    private _output = [
        _paddedName,
        _paddedMankills, 
        _paddedVicKills, 
        _paddedAirKills, 
        _paddedSeaKills, 
        _paddedCivKills, 
        _paddedDeaths, 
        _paddedReputation
    ] joinString " | "; 

    if (!(isnil "_UID") && !(isNil "_NAME")) then {
    private _displayout = _output;
    private _index = lbAdd [89, _displayout];
    lbSetData [89, _index, _selected];
    };
};