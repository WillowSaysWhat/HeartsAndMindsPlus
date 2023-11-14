
/* ----------------------------------------------------------------------------
Function: btc_log_fnc_server_repair_wreck

Description:
    Repair wreck.

Parameters:
    _veh - Vehicle to repair. [Object]

Returns:

Examples:
    (begin example)
        _veh = [my_vehicle] spawn btc_log_fnc_server_repair_wreck;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_veh", objNull, [objNull]],
    ["_blacklist", btc_veh_respawnable, [[]]]
];

if (_veh in _blacklist) exitWith {
    [16] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
};

private _type = typeOf _veh;
(getPosASL _veh) params ["_x", "_y", "_z"];
private _dir = getDir _veh;
private _marker = _veh getVariable ["marker", ""];
private _vehProperties = _veh call btc_veh_fnc_propertiesGet;

//Eco Check
private _eco = [west] call acex_fortify_fnc_getBudget;
private _cost = [west, _type] call ace_fortify_fnc_getCost;
private _costadjusted = floor (_cost * 0.2);

if!(_eco > _costadjusted ) exitWith {
    [26] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
};

private _output = 0 - _costadjusted;

[west, _output, false] call acex_fortify_fnc_updateBudget; 
btc_global_economy = btc_global_economy + _output;


// Reset properties
_vehProperties set [5, false];
(_vehProperties select 3) set [0, _veh getVariable "btc_EDEN_defaultFuelCargo"];
(_vehProperties select 6) set [1, _veh getVariable "btc_EDEN_defaultSupply"];

private _EDENinventory = _veh getVariable ["btc_EDENinventory", []];

btc_vehicles = btc_vehicles - [_veh];
publicVariable "btc_vehicles";

if (_marker != "") then {
    deleteMarker _marker;
    remoteExecCall ["", _marker];
};

if ((getVehicleCargo _veh) isNotEqualTo []) then {
    _veh setVehicleCargo objNull;
};

{
    _x call btc_body_fnc_bagRecover_s;
} forEach crew _veh;

[{
    deleteVehicle _this;
}, _veh] call CBA_fnc_execNextFrame;

private _serialisedVeh = [_type, [_x, _y, 0.5 + _z], _dir] + _vehProperties + [_EDENinventory];
[btc_log_fnc_createVehicle, _serialisedVeh, 1] call CBA_fnc_waitAndExecute;
