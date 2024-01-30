/* ----------------------------------------------------------------------------
Function: tet_ui_openscores

Description:
    Opens the Scoreboard UI

Usage:
    spawn tet_ui_openscores

Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_openscores;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */

closeDialog 0;

disableSerialization;
closeDialog 0;
createDialog "tet_ui_dlg_scoreboard";

waitUntil {dialog};

call tet_ui_loadscores;
