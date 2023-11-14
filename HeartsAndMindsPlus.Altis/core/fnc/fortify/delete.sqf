
/* ----------------------------------------------------------------------------
Function: tet_fortify_delete

Description:
    Deletes vehicles from the fortify array.

Parameters:
    _veh - Object to delete. [Object]

Returns:

Examples:
    (begin example)
        [cursorObject] call tet_fortify_delete;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

    params ["_veh"];

    _type = typeOf _veh;
	private _cost = [west, _type] call ace_fortify_fnc_getCost;
	private _costadjusted = floor (_cost * 0.6);
	[west, _costadjusted, false] call acex_fortify_fnc_updateBudget; 
	btc_global_economy = btc_global_economy + _costadjusted;

    if (_type in btc_veh_respawnable) exitWith {
    [16] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
    };

    [_veh] call CBA_fnc_deleteEntity;

    true