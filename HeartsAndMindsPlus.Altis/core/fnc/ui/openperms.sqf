/* ----------------------------------------------------------------------------
Function: tet_ui_openperms

Description:
    Opens the Permissions UI

Usage:
    spawn tet_ui_openperms

Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_openperms;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */

closeDialog 0;

//if !(PLAYER IS ADMIN) exitWith {["not allowed!"] spawn BIS_fnc_guiMessage;};

disableSerialization;
closeDialog 0;
createDialog "tet_ui_dlg_permissions";

waitUntil {dialog};

call tet_ui_loadperms;

