
/* ----------------------------------------------------------------------------
Function: tet_ui_kill

Description:
    Tracks the death of non unit assets.

Parameters:


Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_kill
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_unit", "_killer"];

if (isServer) then {

if (isPlayer _killer) then {
_uid = getplayerUID _killer;
["KILL", _uid, _unit] call tet_ui_setdatascore;
[btc_rep_bonus_vehicle, _killer] remoteExecCall ["btc_rep_fnc_change", 2];
};

};