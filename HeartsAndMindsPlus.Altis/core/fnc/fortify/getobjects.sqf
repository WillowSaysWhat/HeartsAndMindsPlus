
/* ----------------------------------------------------------------------------
Function: tet_fortify_getobjects

Description:
    Collects objects from the array and displays them within the dlg

Parameters:
    _main_class - []
    _sub_class - []

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_getobjects;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

private _var = lbText [81, lbCurSel 81];
btc_construction_array params ["_main_class", "_sub_class"];
private _id = _main_class find _var;
private _category = _sub_class select _id;
lbClear 82;
for "_i" from 0 to ((count _category) - 1) do {
    private _class = _category select _i;
    private _display = getText (configFile >> "cfgVehicles" >> _class >> "displayName");

	private _classname = _display;

    // Modify display name
    switch (_class) do {
        case "Land_Cargo20_blue_F": {
            _classname = "FOB Deployment Crate";
        };
        case "Land_Cargo20_IDAP_F": {
            _classname = "Side Mission Supplies";
        };
        case "Land_RepairDepot_01_green_F": {
            _classname = "Salvage Station";
        };
        case "C_supplyCrate_F": {
            _classname = "Arsenal";
        };
        default {
            _classname = _display;
        };
    };

    //ICON
    _icon = getText ( configFile >> "cfgVehicles" >> _class >> "icon");
    if(isText  (configFile >> "CfgVehicleIcons" >> _icon)) then {
        _icon = (getText (configFile >> "CfgVehicleIcons" >> _icon));
    };
     
    // Modify display to add cost
    _cost = [west, _class] call ace_fortify_fnc_getCost;

    _costdisplay = [" [$", _cost, "]"] joinString "";

    
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

    private _paddedcostdisplay = [(format ["%1", _costdisplay]), 10] call _padString;
    
    _displayout = [_paddedcostdisplay, _classname] joinString "";
    
    private _index = lbAdd [82, _displayout];
    lbSetPictureRight [82, _index, _icon];
    lbSetData [82, _index, _class];
    if (_i isEqualTo 0) then {lbSetCurSel [82, _index];};
};