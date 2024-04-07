/* ----------------------------------------------------------------------------
Function: tet_fortify_fill

Description:
    Fills objects with supplies etc
Parameters:
    _obj - Object to fill. [Object]

Returns:

Examples:
    (begin example)
        [_this] call tet_fortify_fill;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_obj"];

private _class = typeof _obj;
_inventory = [];

if (_class isEqualTo btc_supplies_cargo) then {
	btc_supplies_mat params ["_food", "_water"];
	_cargo = [selectRandom _food, selectRandom _water] apply {[_x, "", []]};
	[_obj, _cargo,_inventory] call btc_db_fnc_loadCargo;
};