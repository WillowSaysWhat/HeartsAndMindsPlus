
/* ----------------------------------------------------------------------------
Function: tet_fortify_open

Description:
    Opens the fortify build Dlg

Usage:
    spawn tet_fortify_open

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_open;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */


closeDialog 0;

if !(player getVariable ["allow_build", false]) exitWith {["Building not allowed!"] spawn BIS_fnc_guiMessage;};

// CHANGE TO GIVE BUILD TOOL IF NOT POSSESSED!
if (!([player, "ACE_Fortify"] call BIS_fnc_hasItem)) then {player addItem "ACE_Fortify";};

_flag =  nearestObjects [player, [btc_fob_flag], 100];
if (count _flag < 1) exitWith {["Must be in a build zone!"] spawn BIS_fnc_guiMessage;};

disableSerialization;
closeDialog 0;
createDialog "tet_fortify_dlg";

waitUntil {dialog};

call tet_fortify_load;

