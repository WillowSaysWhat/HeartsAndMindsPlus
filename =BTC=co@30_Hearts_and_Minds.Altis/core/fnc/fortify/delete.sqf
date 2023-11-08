
/* ----------------------------------------------------------------------------
Function: tet_fortify_delete

Description:
    Delete object created by logistic point.

Parameters:
    _veh - Object to delete. [Object]

Returns:

Examples:
    (begin example)
        [cursorObject] call tet_fortify_delete;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

    params ["_veh"];

    _type = typeof _veh;
	private _cost = [west, _type] call ace_fortify_fnc_getCost;
	private _costadjusted = floor (_cost * 0.6);
	[west, _costadjusted, false] call acex_fortify_fnc_updateBudget; 
	btc_global_economy = btc_global_economy + _costadjusted;

    [_veh] call CBA_fnc_deleteEntity;

    true