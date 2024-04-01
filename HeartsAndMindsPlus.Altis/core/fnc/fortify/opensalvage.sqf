
/* ----------------------------------------------------------------------------
Function: tet_fortify_opensalvage

Description:
    Opens the fortify salvage Dlg

Usage:
    spawn tet_fortify_open

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_opensalvage;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */

closeDialog 0;

//if !(player getVariable ["allow_salvage", false]) exitWith {["Salvage not allowed!"] spawn BIS_fnc_guiMessage;};

disableSerialization;
closeDialog 0;
createDialog "Tet_fortify_dlg_salvage";

waitUntil {dialog};

call tet_fortify_loadsalvage;


