
[compileScript ["core\init.sqf"]] call CBA_fnc_directCall;


//ARSENAL 
[] call compileFinal preprocessFileLineNumbers "core\def\rolearsenal.sqf";

[west, btc_global_economy, ALLTOPRICETOTAL] call acex_fortify_fnc_registerObjects;

ARSENAL_CRATES = [];
Arsenal_typename = "C_supplyCrate_F"; // CONFIG - ARSENAL TYPE

[Arsenal_typename, "init",
{
    private _box = (_this select 0);
    private _player = player;

    diag_log format ["ROLE ARSENAL EH Role: %1", roleDescription _player];


    ARSENAL_CRATES pushback _box;
    [roleArsenal, [_box, _player], 5] call CBA_fnc_waitAndExecute;
},
true,
[],
true
] call CBA_fnc_addClassEventHandler;


[Arsenal_typename, "init",
{
    private _box = (_this select 0);
    private _player = player;

    

},
true,
[],
true
] call CBA_fnc_addClassEventHandler;


["acex_fortify_objectPlaced", {
  params ["_player", "_side", "_objectPlaced"];
// Need to find a way to remove, and then place back the same vehicle here.
    if (_objectPlaced isKindof "AllVehicles")then{
      _objectPlaced call btc_veh_fnc_add;
      _type = typeOf _objectPlaced;
      [_type] call btc_veh_fnc_init;
    };
    if !(_objectPlaced isKindof "AllVehicles")then{
      [_objectPlaced] call btc_log_fnc_init;
    }; 
    if (unitIsUAV _objectPlaced) then {
      createVehicleCrew _objectPlaced;
    };
    btc_global_economy = [west] call acex_fortify_fnc_getBudget;
    clearWeaponCargoGlobal _objectPlaced;
    clearMagazineCargoGlobal _objectPlaced;
    clearBackpackCargoGlobal _objectPlaced;
}] call CBA_fnc_addEventHandler;

["acex_fortify_objectDeleted", {
  params ["_player", "_side", "_objectDeleted"];
   [] spawn { sleep 5; btc_global_economy = [west] call acex_fortify_fnc_getBudget;};
  if (_objectPlaced isKindof "AllVehicles")then{
    btc_vehicles = btc_vehicles - [_objectDeleted];
  };
  if !(_objectPlaced isKindof "AllVehicles")then{
    btc_log_obj_created = btc_log_obj_created - [_objectDeleted];
  }; 
}] call CBA_fnc_addEventHandler;

[{
    params ["_unit", "_object", "_cost"];
    private _return = (getPosATL _object) select 2 < 1;
    _return
}] call ace_fortify_fnc_addDeployHandler;

["acex_fortify_onDeployStart", {
  params ["_player", "_object", "_cost"];
   _object enableSimulation false;
}] call CBA_fnc_addEventHandler;
 