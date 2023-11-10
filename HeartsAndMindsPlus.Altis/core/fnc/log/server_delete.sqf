
/* ----------------------------------------------------------------------------
Function: btc_log_fnc_server_delete

Description:
    Delete object created by logistic point.

Parameters:
    _veh - Object to delete. [Object]
    _allowlist - Item can be deleted. [Array]

Returns:

Examples:
    (begin example)
        [cursorObject] call btc_log_fnc_server_delete;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_veh", objNull, [objNull]],
    ["_allowlist", btc_log_obj_created, [[]]]
];

if !(_veh in _allowlist) exitWith {
    [17] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
};
    // Add economy adjuster
    _type = typeof _veh;
	private _cost = [west, _type] call ace_fortify_fnc_getCost;
	private _costadjusted = floor (_cost * 0.6);
	[west, _costadjusted, false] call acex_fortify_fnc_updateBudget; 
	btc_global_economy = btc_global_economy + _costadjusted;
[_veh getVariable ["ace_cargo_loaded", []], _allowlist deleteAt (_allowlist find _veh)] call CBA_fnc_deleteEntity;
true