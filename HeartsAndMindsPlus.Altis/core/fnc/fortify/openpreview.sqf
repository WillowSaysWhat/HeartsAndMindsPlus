
/* ----------------------------------------------------------------------------
Function: tet_fortify_openpreview

Description:
    Opens the fortify preview dlg

Usage:
    spawn tet_fortify_openpreview

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_openpreview;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */

[{
    params ["_class"];

	closeDialog 0;
	createDialog "Tet_fortify_dlg_preview";
	waitUntil {dialog};

	//Use current selection, Set Image of preview window with preview image from config file of selected class


}, [lbData [82, lbCurSel 82]], 0.5] call CBA_fnc_waitAndExecute;

