
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
    _vehicle = btc_vehicles;
    _friendly = flatten (btc_construction_array select 1);
    _enemy = btc_type_motorized + btc_type_motorized_armed;

    if (_obj in _vehicles) then {
        btc_vehicles = btc_vehicles - [_obj];
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