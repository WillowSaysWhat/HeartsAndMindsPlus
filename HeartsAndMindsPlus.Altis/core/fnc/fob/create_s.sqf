
/* ----------------------------------------------------------------------------
Function: btc_fob_fnc_create_s

Description:
   Create the FOB.

Parameters:
    _pos - Position of the FOB. [Array]
    _direction - Direction of the FOB between 0 to 360 degree. [Number]
    _FOB_name - Name of the FOB. [String]
    _fob_structure - FOB structure. [Array]
    _fob_flag - Flag type. [Array]
    _fobs - Array of FOB. [Array]

Returns:
    _array - Return marker, structure and flag object. [Array]

Examples:
    (begin example)
        [getPos player, random 360, "My FOB"] call btc_fob_fnc_create_s;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_pos", [], [[]]],
    ["_direction", 0, [0]],
    ["_FOB_name", "FOB ", [""]],
    ["_fob_structure", btc_fob_structure, [[]]],
    ["_fob_flag", btc_fob_flag, [[]]],
    ["_fobs", btc_fobs, [[]]]
];

private _pad_type = "Land_HelipadCivil_F";

private _flag = createVehicle [_fob_flag, _pos, [], 0, "CAN_COLLIDE"];
private _structure = createVehicle [_fob_structure, _pos, [], 0, "CAN_COLLIDE"];

_structure setDir _direction;

// Define the offset distance
private _offsetDistance = 15;

private _offsetPosition = _pos vectorAdd [(_offsetDistance * sin _direction), (_offsetDistance * cos _direction), 0];

private _pad = createVehicle [_pad_type, _offsetPosition, [], 0, "CAN_COLLIDE"];

_pad setDir _direction;


// LOGISTICS ADD

//Log point
{
    _x params ["_object", "_helipad"];
    _action = ["Logistic", localize "STR_BTC_HAM_ACTION_LOC_MAIN", "\A3\ui_f\data\igui\cfg\simpleTasks\letters\L_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Repair_wreck", localize "STR_BTC_HAM_ACTION_LOGPOINT_REPWRECK", "\A3\ui_f\data\igui\cfg\simpleTasks\types\repair_ca.paa", {
        params ["", "", "_params"];
        _params call btc_log_fnc_repair_wreck
    }, {true}, {}, [_helipad], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Logistic"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Refuel", localize "STR_BTC_HAM_ACTION_LOGPOINT_REFUELSOURCE", "\A3\ui_f\data\igui\cfg\simpleTasks\types\refuel_ca.paa", {
        params ["", "", "_params"];
        _params call btc_log_fnc_refuelSource
    }, {true}, {}, [_helipad], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Logistic"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Rearm", localize "STR_BTC_HAM_ACTION_LOGPOINT_REARMSOURCE", "\A3\ui_f\data\igui\cfg\simpleTasks\types\rearm_ca.paa", {
        params ["", "", "_params"];
        _params call btc_log_fnc_rearmSource
    }, {true}, {}, [_helipad], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Logistic"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Require_veh", localize "STR_BTC_HAM_ACTION_LOGPOINT_REQVEH", "\A3\ui_f\data\map\vehicleicons\iconCar_ca.paa", {
        params ["", "", "_params"];
        _params spawn btc_arsenal_fnc_garage
    }, {(serverCommandAvailable "#logout" || !isMultiplayer) and btc_p_garage}, {}, [_helipad], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Logistic"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Tool", localize "str_3den_display3den_menubar_tools_text", "\A3\ui_f\data\igui\cfg\simpleTasks\letters\T_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Copy_inventory", localize "STR_BTC_HAM_ACTION_COPYPASTE_COPYI", "\A3\ui_f\data\igui\cfg\simpleTasks\types\download_ca.paa", {
        params ["", "", "_params"];
        _params call btc_log_fnc_inventoryCopy
    }, {true}, {}, [_helipad], [0, 0, 0.4], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Tool"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Paste_inventory", localize "STR_BTC_HAM_ACTION_COPYPASTE_PASTEI", "\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_ca.paa", {
        params ["", "", "_params"];
        [btc_copy_inventory, _params] call btc_log_fnc_inventoryPaste
    }, {!isNil "btc_copy_inventory"}, {}, _helipad, [0, 0, 0.4], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Tool"], _action] call ace_interact_menu_fnc_addActionToObject;
    _action = ["Restore_inventory", localize "STR_BTC_HAM_ACTION_RESTOREI", "\A3\Ui_f\data\GUI\Cfg\KeyframeAnimation\IconCurve_CA.paa", {
        params ["", "", "_params"];
        _params call btc_log_fnc_inventoryRestore
    }, {true}, {}, _helipad, [0, 0, 0.4], 5] call ace_interact_menu_fnc_createAction;
    [_object, 0, ["ACE_MainActions", "Tool"], _action] call ace_interact_menu_fnc_addActionToObject;
    if (btc_p_respawn_ticketsAtStart isNotEqualTo -1) then {
        _action = ["Bodybag", localize "STR_BTC_HAM_ACTION_LOGPOINT_BODYBAG", "\A3\Data_F_AoW\Logos\arma3_aow_logo_ca.paa", {
            params ["", "", "_params"];
            _params call btc_body_fnc_bagRecover;
        }, {true}, {}, [_helipad], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
        [_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    };
} forEach [[_flag, _pad]];

// END

private _marker = createMarker [_FOB_name, _pos];
_marker setMarkerSize [1, 1];
_marker setMarkerType "b_hq";
_marker setMarkerText _FOB_name;
_marker setMarkerColor "ColorBlue";
_marker setMarkerShape "ICON";

(_fobs select 0) pushBack _marker;
(_fobs select 1) pushBack _structure;
(_fobs select 2) pushBack _flag;
[_flag, "Deleted", {[_thisArgs select 0, _thisArgs select 1] call BIS_fnc_removeRespawnPosition}, [btc_player_side, _flag, _FOB_name] call BIS_fnc_addRespawnPosition] call CBA_fnc_addBISEventHandler;

_structure addEventHandler ["Killed", btc_fob_fnc_killed];

[_marker, _structure, _flag]
