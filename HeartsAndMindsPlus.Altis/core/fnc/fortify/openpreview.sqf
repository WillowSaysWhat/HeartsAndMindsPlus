
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

    

	_img = getText ( configFile >> "cfgVehicles" >> _class >> "editorPreview");
    
    createDialog "Tet_fortify_preview";
	waitUntil {dialog};
    ctrlSetText [95, _img]; // for Dialogs


}, [lbData [82, lbCurSel 82]], 0.5] call CBA_fnc_waitAndExecute;

