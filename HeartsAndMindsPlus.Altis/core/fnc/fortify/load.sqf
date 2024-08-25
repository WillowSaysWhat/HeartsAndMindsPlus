
/* ----------------------------------------------------------------------------
Function: tet_fortify_load

Description:
    Changes the selecion category and updates t

Parameters:
    _main_class - [] 
    _sub_class - []

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_load;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

lbClear 81;

btc_construction_array params ["_main_class", "_sub_class"];

_main_class1 = _main_class; // done to avoid any global issues.

// Unlock System
city_remaining = [];  
// Check if cities are occupied and count them
{  
if (_y getVariable ["occupied", false]) then {  
    city_remaining pushBack _y;  
};  
} forEach btc_city_all; 

// Turns it into a %
VictoryPercentage = 100 - (((count city_remaining) / (count btc_city_all)) *100);

// then use the victory % to decide if the categories should be added
for "_i" from 0 to (count _main_class - 5) do {  // -5 is the number of base cateogires to always have
   level = (_i / count _main_class) *100; // This decides what level each class is, currently % based - Would need a min/max, or possibly an inflated rate e.g: +30 to start inline with initial unlocks
if (level<VictoryPercentage) then {_main_class1 deleteAt _i}; // Remove the selected class if its above victory level
};



for "_i" from 0 to ((count _main_class1) - 1) do {
    private _lb = lbAdd [81, _main_class1 select _i];
    if (_i isEqualTo 0) then {
        lbSetCurSel [81, _lb];
    };
};

_ecom = ["FUNDS: [$", btc_global_economy, "]"] joinString "";
lbAdd [84, _ecom];

private _category = _sub_class select 0;
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

    _displayout = [_costdisplay, _classname] joinString "       ";
    
    private _index = lbAdd [82, _displayout];
    lbSetPictureRight [82, _index, _icon];
    lbSetData [82, _index, _class];
    if (_i isEqualTo 0) then {lbSetCurSel [82, _index];};
};
true

