
/* ----------------------------------------------------------------------------
Function: btc_city_fnc_setClear

Description:
    Define a city with the corresponding ID as clear (no more occupied).

Parameters:
    _trigger - Enemy trigger with no more enemy. [Number]
    _remainEnemyUnits - Remaining enemy units assigned to the city. [Array]

Returns:

Examples:
    (begin example)
        _result = [] call btc_city_fnc_setClear;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_trigger", objNull, [objNull]],
    ["_remainEnemyUnits", [], [[]]]
];

private _city = _trigger getVariable "playerTrigger";
_city setVariable ["occupied", false];

if (_remainEnemyUnits isNotEqualTo []) then {
    {
        if (unitIsUAV _x) then {
            _x setDamage 1;
        } else {
            [_x, true] call ace_captives_fnc_setSurrendered;
        };
    } forEach _remainEnemyUnits;
};

//if (_city getVariable ["marker", ""] != "") then {
//    (_city getVariable ["marker", ""]) setMarkerColor "ColorUNKNOWN"; // CONFIG OBJ Colors - CLEARED
//};

if (btc_final_phase) then {
    btc_city_remaining = btc_city_remaining - [_city];
    if (_city getVariable ["marker", ""] != "") then {
    (_city getVariable ["marker", ""]) setMarkerColor "colorBLUFOR"; // CONFIG OBJ Colors - CLEARED - ENDGAME
};
};

//ADDNOTIF OBJ CLEAR
[parseText "<t color='#FACE00' font='PuristaBold' align = 'right' shadow = '1.5' size='2'>+ Objective Cleared! </t><br /><t  align = 'right' shadow = '1.5' size='1.5'>+$500</t>", [0, 0.5, 1, 1], nil, 5, 1.7, 0] remoteExec ["BIS_fnc_textTiles", 0];
    [west, 500, false] call acex_fortify_fnc_updateBudget; 
    btc_global_economy = btc_global_economy + 500;

if (btc_debug) then {
    private _id = _city getVariable "id";
    (format ["loc_%1", _id]) setMarkerColor "colorBLUFOR";
};
