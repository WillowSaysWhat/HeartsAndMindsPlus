params ["_suicider"];

[_suicider] joinSilent createGroup [btc_enemy_side, true];

_suicider call btc_fnc_rep_remove_eh;

[group _suicider] call CBA_fnc_clearWaypoints;

private _trigger = createTrigger ["EmptyDetector", getPos _suicider];
_trigger setTriggerArea [5, 5, 0, false];
_trigger setTriggerActivation [str btc_player_side, "PRESENT", false];
_trigger setTriggerStatements ["this", "thisTrigger call btc_fnc_ied_allahu_akbar;", ""];
_trigger setVariable ["suicider", _suicider];

_trigger attachTo [_suicider, [0, 0, 0]];

private _array = getPos _suicider nearEntities ["SoldierWB", 30];

if (_array isEqualTo []) exitWith {};

private _expl1 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl1 attachTo [_suicider, [-0.1, 0.1, 0.15], "Pelvis"];
private _expl2 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl2 attachTo [_suicider, [0, 0.15, 0.15], "Pelvis"];
private _expl3 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl3 attachTo [_suicider, [0.1, 0.1, 0.15], "Pelvis"];

[_expl1, _expl2, _expl3] remoteExec ["btc_fnc_ied_belt", 0];

_suicider addEventHandler ["Killed", {
    params ["_unit", "_killer"];

    if !(isPlayer _killer) then {
        (attachedObjects _unit) call CBA_fnc_deleteEntity;
    };
}];

(group _suicider) setBehaviour "CARELESS";
(group _suicider) setSpeedMode "FULL";

if (btc_debug_log) then {
    [format ["_suicider = %1 POS %2 START LOOP", _suicider, getPos _suicider], __FILE__, [false]] call btc_fnc_debug_message;
};

[{
    params ["_args", "_id"];
    _args params ["_suicider", "_trigger"];

    if (Alive _suicider) then {
        private _array = _suicider nearEntities ["SoldierWB", 30];
        if !(_array isEqualTo []) then {
            _suicider doMove (position (_array select 0));
        };
    } else {
        [_id] call CBA_fnc_removePerFrameHandler;
        deleteVehicle _trigger;
        group _suicider setVariable ["suicider", false];
        if (btc_debug_log) then {
            [format ["_suicider = %1 POS %2 END LOOP", _suicider, getPos _suicider], __FILE__, [false]] call btc_fnc_debug_message;
        };
    };
}, 0.5, [_suicider, _trigger]] call CBA_fnc_addPerFrameHandler;
