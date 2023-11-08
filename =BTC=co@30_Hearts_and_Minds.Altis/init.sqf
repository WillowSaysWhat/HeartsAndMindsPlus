
[compileScript ["core\init.sqf"]] call CBA_fnc_directCall;


//ARSENAL 
[] call compileFinal preprocessFileLineNumbers "scripts\rolearsenal.sqf";



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

// MASTER CONFIG - ECONOMY 
[west, btc_global_economy, [
//enemy
    ["UK3CB_ION_O_Urban_M113_M240", 1150, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_M2_90", 1200, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_M2", 1200, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_supply", 1000, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_AMB", 1000, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_MK19_90", 1250, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_MK19", 1250, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_MB4WD_Unarmed", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M113_unarmed", 1000, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Landcruiser", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LR_Closed", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LR_Open", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LR_M2", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M998_2DR", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M1025", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M1025_M2", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M1025_MK19", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M1025_TOW", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_M1030", 400, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Hilux_Ambulance", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Hilux", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Hilux_Open", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Hilux_M2", 650, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Offroad", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Offroad_Covered", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Offroad_Comms", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Offroad_Service", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Offroad_M2", 750, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LSV_01", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LSV_01_Light", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LSV_02", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LSV_02_AT", 850, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_LSV_02_Armed", 750, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_MaxxPro_M2", 1050, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_MaxxPro_MK19", 1150, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_MB4WD_LMG", 650, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Quadbike", 400, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Pickup", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Pickup_M2", 650, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_SUV", 500, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_SUV_Armed", 700, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_SUV_Armoured", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Closed", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Open", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Reammo", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Recovery", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Refuel", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_T810_Repair", 800, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Transit_Transport", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Transit_Medevac", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_Transit_Service", 600, "Enemy Vehicles"],
    ["UK3CB_ION_O_Urban_MB4WD_Unarmed", 500, "Enemy Vehicles"],
//DONOTREMOVE
    //["DeconShower_01_F", 80, "Logistics"],
    ["Land_Cargo20_blue_F", 1000, "Logistics"], // FOB
    ["Land_RepairDepot_01_green_F", 500, "Logistics"], // SALVAGE STATION
    ["Land_Cargo20_IDAP_F", 0, "Logistics"], // SUPPLIES
    // BTC CONTAINERS
      ["Land_Cargo20_military_green_F", 50, "Logistics"],
      ["Land_Cargo40_military_green_F", 100, "Logistics"],
      ["B_Slingload_01_Cargo_F", 50, "Logistics"],
//blufor
    ["Land_BagBunker_Small_F", 5, "Fortification"],
    ["Land_BagFence_Corner_F", 5, "Fortification"],
    ["Land_BagFence_End_F", 5, "Fortification"],
    ["Land_BagFence_Long_F", 5, "Fortification"],
    ["Land_BagFence_Round_F", 5, "Fortification"],
    ["Land_BagFence_Short_F", 5, "Fortification"],
    ["Land_HBarrier_1_F", 5, "Fortification"],
    ["Land_HBarrier_3_F", 5, "Fortification"],
    ["Land_HBarrier_5_F", 5, "Fortification"],
    ["Land_HBarrierBig_F", 5, "Fortification"],
    ["Land_Razorwire_F", 5, "Fortification"],
    ["Land_CncBarrier_F", 5, "Fortification"],
    ["Land_CncBarrierMedium_F", 5, "Fortification"],
    ["Land_CncBarrierMedium4_F", 5, "Fortification"],
    ["Land_CncWall1_F", 5, "Fortification"],
    ["Land_CncWall4_F", 5, "Fortification"],
    ["Land_Mil_ConcreteWall_F", 5, "Fortification"],
    ["Land_Mil_WallBig_4m_F", 5, "Fortification"],
    ["Land_Mil_WallBig_Corner_F", 5, "Fortification"],
    ["Land_PortableLight_double_F", 5, "Fortification"],
    ["Land_Net_Fence_Gate_F", 5, "Fortification"],
    ["Land_LampHarbour_F", 5, "Fortification"],
    ["Land_Camping_Light_F", 5, "Fortification"],
    ["Land_DragonsTeeth_01_4x2_new_redwhite_F", 5, "Fortification"],
    ["Land_ConcreteHedgehog_01_F", 5, "Fortification"],
    ["Land_Plank_01_8m_F", 5, "Fortification"],
    ["Land_Plank_01_4m_F", 5, "Fortification"],
    ["Land_Cargo_House_V1_F", 15, "Fortification"],
    ["WireFence", 5, "Fortification"],
    ["Wire", 5, "Fortification"],
    ["Land_LampShabby_F", 5, "Fortification"],
    ["rhs_pontoon_end_static", 15, "Fortification"],
    ["rhs_pontoon_static", 15, "Fortification"],
    ["rhs_pontoon_float", 15, "Fortification"],
    ["Box_NATO_AmmoOrd_F", 10, "Logistics"],
    ["ACE_Box_82mm_Mo_HE", 15, "Logistics"],
    ["ACE_Box_82mm_Mo_Illum", 10, "Logistics"],
    ["ACE_Box_82mm_Mo_Smoke", 10, "Logistics"],
    ["B_Slingload_01_Repair_F", 400, "Logistics"],
    ["B_Slingload_01_Ammo_F", 400, "Logistics"],
    ["B_Slingload_01_Fuel_F", 400, "Logistics"],
    ["C_supplyCrate_F", 100, "Logistics"],
    ["ACE_Box_Chemlights", 15, "Logistics"],
    ["ACE_medicalSupplyCrate_advanced", 15, "Logistics"],
    ["ACE_medicalSupplyCrate", 10, "Logistics"],
    ["ACE_Wheel", 10, "Logistics"],
    ["ACE_fastropingSupplyCrate", 5, "Logistics"],
    ["ACE_Track", 10, "Logistics"],
    ["RHS_M252_USMC_D", 350, "Static"],
    ["RHS_Stinger_AA_pod_USMC_D", 500, "Static"],
    ["RHS_M2StaticMG_USMC_D", 300, "Static"],
    ["RHS_M2StaticMG_MiniTripod_USMC_D", 300, "Static"],
    ["RHS_TOW_TriPod_USMC_D", 400, "Static"],
    ["RHS_MK19_TriPod_USMC_D", 350, "Static"],
    ["RHS_M119_D", 700, "Static"],
    ["B_Static_Designator_01_F", 100, "Static"],
    ["UK3CB_B_AAV_HIDF", 1000, "Ground Vehicles"],
    ["UK3CB_B_LAV25_HIDF",1200, "Ground Vehicles"],
    ["rhsgref_hidf_m113a3_m2", 800, "Ground Vehicles"],
    ["rhsgref_hidf_m113a3_mk19",1500, "Ground Vehicles"],
    ["rhsgref_hidf_rhib", 500, "Ground Vehicles"],
    ["UK3CB_B_M1030_HIDF", 100, "Ground Vehicles"],
    ["rhsgref_hidf_m1025_m2", 500, "Ground Vehicles"],
    ["UK3CB_B_M151_Jeep_Closed_HIDF", 300, "Ground Vehicles"],
    ["UK3CB_B_M151_Jeep_HMG_HIDF", 400, "Ground Vehicles"],
    ["UK3CB_B_M151_Jeep_Open_HIDF", 300, "Ground Vehicles"],
    ["UK3CB_B_M151_Jeep_TOW_HIDF", 500, "Ground Vehicles"],
    ["rhsgref_hidf_M998_2dr_fulltop", 400, "Ground Vehicles"],
    ["rhsgref_hidf_M998_2dr_halftop", 400, "Ground Vehicles"],
    ["rhsgref_hidf_M998_4dr_fulltop", 400, "Ground Vehicles"],
    ["rhsgref_hidf_M998_4dr_halftop", 400, "Ground Vehicles"],
    ["UK3CB_B_M60A3_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Closed_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Guntruck_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Open_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Reammo_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Recovery_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Refuel_HIDF", 700, "Ground Vehicles"],
    ["UK3CB_B_M939_Repair_HIDF", 700, "Ground Vehicles"],
    ["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom", 700, "Ground Vehicles"],
    ["rhsusf_M1084A1R_SOV_M2_D_fmtv_socom", 700, "Ground Vehicles"],
    ["UK3CB_B_Bell412_Armed_dynamicLoadout_HIDF", 1000, "Air Vehicles"],
    ["RHS_C130J_Cargo", 1500, "Air Vehicles"],
    ["rhs_uh1h_hidf_gunship", 1300, "Air Vehicles"],
    ["RHSGREF_A29B_HIDF", 1000, "Air Vehicles"],
    ["UK3CB_B_C47_Late_HIDF", 1500, "Air Vehicles"],
    ["UK3CB_B_C47_Cargo_Late_HIDF", 1500, "Air Vehicles"],
    ["UK3CB_B_Cessna_T41_HIDF", 1000, "Air Vehicles"],
    ["UK3CB_B_Mystere_HIDF", 1000, "Air Vehicles"]

]] call acex_fortify_fnc_registerObjects;

["acex_fortify_objectPlaced", {
  params ["_player", "_side", "_objectPlaced"];
    if (_objectPlaced isKindof "AllVehicles")then{
      _objectPlaced call btc_veh_fnc_add;
      [_objectPlaced] call btc_veh_fnc_init;
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
   [] spawn { sleep 5; btc_global_economy = [west] call acex_fortify_fnc_getBudget;}
  if (_objectPlaced isKindof "AllVehicles")then{
    btc_vehicles = btc_vehicles - [_objectDeleted];
  };
  if !(_objectPlaced isKindof "AllVehicles")then{
    btc_log_obj_created = btc_log_obj_created - [_objectDeleted];
  }; 
}] call CBA_fnc_addEventHandler;

["ace_fortify_deployCanceled", {
  params ["_player"];
   //_player removeitemfromuniform "ACE_Fortify";
}] call CBA_fnc_addEventHandler;

[{
    params ["_unit", "_object", "_cost"];
    private _return = (getPosATL _object) select 2 < 1;
    //Add blocked for distance to other vehicles
    _return
}] call ace_fortify_fnc_addDeployHandler;

["acex_fortify_onDeployStart", {
  params ["_player", "_object", "_cost"];
   _object enableSimulation false;
}] call CBA_fnc_addEventHandler;
 