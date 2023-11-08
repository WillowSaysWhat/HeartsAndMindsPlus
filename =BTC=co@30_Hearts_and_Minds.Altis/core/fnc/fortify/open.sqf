
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
// ^^ Replace with a canBuild Variable


// Give tool if one not had
if (!([player, "ACE_Fortify"] call BIS_fnc_hasItem)) exitWith {["Build Tool Required!"] spawn BIS_fnc_guiMessage;};

_flag =  nearestObjects [player, [btc_fob_flag], 100];
//_classname = typeof (_flag select 0);
if (count _flag < 1) exitWith {["Must be in a build zone!"] spawn BIS_fnc_guiMessage;};

//if (!([player] call ace_fortify_fnc_canFortify)) exitWith {["Must be in a build zone!"] spawn BIS_fnc_guiMessage;};
// REPLACE with regional zone check for distance to a fob or HQ.



disableSerialization;
closeDialog 0;
createDialog "tet_fortify_dlg";

waitUntil {dialog};

call tet_fortify_load;

