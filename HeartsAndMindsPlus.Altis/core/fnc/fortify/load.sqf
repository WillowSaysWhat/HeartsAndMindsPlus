
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
 
_cats = []; 
_cats = _cats + _main_class;
 
[] remoteExecCall ["tet_fortify_progress", [2]]; 
for "_i" from (count _main_class) to 0 step -1 do {
   level = (_i / (count _main_class)) * 100;
   if (level >= VictoryPercentage) then {
       _cats deleteAt _i;
   };
};

// Add categories
for "_i" from 0 to ((count _cats) - 1) do {
    private _lb = lbAdd [81, _cats select _i];
    if (_i isEqualTo 0) then {
        lbSetCurSel [81, _lb];
    };
};

// Title funds bar
_ecom = ["FUNDS: [$", btc_global_economy, "]"] joinString "";
lbAdd [84, _ecom];

// Add items to categories
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

