
/* ----------------------------------------------------------------------------
Function: tet_fortify_loadsalvage

Description:
    Changes the selecion category and updates t

Parameters:
    _main_class - [] 

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_loadsalvage;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

lbClear 85;

_ecom = ["FUNDS: [$", btc_global_economy, "]"] joinString "";
lbAdd [86, _ecom];

_array = nearestObjects [getPos player, [] , 15];

for "_i" from 0 to ((count _array) - 1) do {

	private _object = _array select _i;
	private _classname = typeof _object;
    private _display = getText (configFile >> "cfgVehicles" >> _classname >> "displayName");
    private _classnameout = _display;

	// Modify display name
    switch (_classname) do {
        case "Land_Cargo20_blue_F": {
            _classnameout = "FOB Deployment Crate";
        };
        case "Land_Cargo20_IDAP_F": {
            _classnameout = "Side Mission Supplies";
        };
        case "Land_RepairDepot_01_green_F": {
            _classnameout = "Salvage Station";
        };
        case "C_supplyCrate_F": {
            _classname = "Arsenal";
        };
        default {
            _classnameout = _display;
        };
    };
 
    private _cost = [west, _classname] call ace_fortify_fnc_getCost;
	private _costadjusted = floor (_cost * 0.5);

    _costdisplay = [" [$", _costadjusted, "]"] joinString "";
    _displayout = [_costdisplay, _classnameout] joinString "       ";

    //ICON
    _icon = getText ( configFile >> "cfgVehicles" >> _classname >> "icon");
    if(isText  (configFile >> "CfgVehicleIcons" >> _icon)) then {
        _icon = (getText (configFile >> "CfgVehicleIcons" >> _icon));
    };

    _Allowed = flatten (btc_construction_array select 1) - ["Land_RepairDepot_01_green_F"] + btc_type_motorized + btc_type_motorized_armed;

    if (_classname in _allowed) then {
        missionnameSpace setVariable [str _object, _object, true];
        private _index = lbAdd [85, _displayout];
        lbSetPictureRight [85, _index, _icon];
        lbSetData [85, _index, str _object];
        if (_i isEqualTo 0) then {
            lbSetCurSel [85, _index];
        };
    };
};
true

