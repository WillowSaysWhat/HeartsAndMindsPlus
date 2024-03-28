
/* ----------------------------------------------------------------------------
Function: tet_fortify_salvage

Description:
    Removes the object and updates the budget.

Parameters:

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_salvage;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */
[{
params ["_object"];

	_obj = missionNamespace getVariable [_object, objNull];
    _type = typeOf _obj;
    _vehicle = btc_fortify_vehicles;
    _friendly = btc_all_obj;
    _enemy = flatten btc_type_boats + flatten btc_type_motorized + flatten btc_type_motorized_armed;

    if (_type in _vehicle) then {
        [_obj] remoteExecCall ["tet_fortify_delete", [2]];
    };

    if (_type in _friendly) then {
        [_obj] remoteExecCall ["btc_log_fnc_server_delete", [2]];
    };

    if (_type in _enemy) then {
        [_obj] remoteExecCall ["tet_fortify_delete", [2]];
    };

	closeDialog 0;

}, [lbData [85, lbCurSel 85]], 0.5] call CBA_fnc_waitAndExecute; 