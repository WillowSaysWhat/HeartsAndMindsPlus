
/* ----------------------------------------------------------------------------
Function: tet_fortify_select

Description:
    Spawn the selected item using the fortify integration

Parameters:

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_select;
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */
[{
    params ["_class"];

	private _cost = [west, _class] call ace_fortify_fnc_getCost;
	private _budget = [west] call ace_fortify_fnc_getBudget;

	if (_cost > _budget) exitWith {["Not enough funds!"] spawn BIS_fnc_guiMessage;};
	
	//player addItemToUniform "ACE_Fortify";
	[player, player, [west, _class]] call ace_fortify_fnc_deployObject;

	closeDialog 0;


}, [lbData [82, lbCurSel 82]], 0.5] call CBA_fnc_waitAndExecute;

