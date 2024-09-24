
/* ----------------------------------------------------------------------------
Function: btc_log_fnc_init_v

Description:
    Fill me when you edit me !

Parameters:
    _obj - [Object]

Returns:

Examples:
    (begin example)
        _result = [] call btc_log_fnc_init_v;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params [
    ["_obj", objNull, [objNull]]
];

_type = typeOf _obj; 
if (_type in btc_log_def_loadable) then {
    [_obj, round ((sizeOf _type)/1.5)] call ace_cargo_fnc_setSize;
};
if (_type in btc_log_def_can_load) then {
    [_obj, round ((sizeOf _type)*1.5)] call ace_cargo_fnc_setSpace;
};

 