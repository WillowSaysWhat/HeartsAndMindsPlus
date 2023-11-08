
/* ----------------------------------------------------------------------------
Function: tet_fortify_eco

Description:
    Adds money to the economy

Usage:
    spawn tet_fortify_open

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_eco;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */


params [
    ["_num", 0, [0]]
];

[west, _num, false] call acex_fortify_fnc_updateBudget; 
btc_global_economy = btc_global_economy + _num;
publicVariable "btc_global_economy";

