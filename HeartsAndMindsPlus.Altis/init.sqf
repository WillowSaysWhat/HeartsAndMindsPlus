
[compileScript ["core\init.sqf"]] call CBA_fnc_directCall;


//ARSENAL 
[] call compileFinal preprocessFileLineNumbers "core\def\rolearsenal.sqf";

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

//Economy Prices 
[west, btc_global_economy, [
["rhsusf_mrzr4_d",75],
["rhsusf_m1045_d",100],
["rhsusf_m998_d_2dr_fulltop",100],
["rhsusf_m998_d_2dr_halftop",100],
["rhsusf_m998_d_2dr",100],
["rhsusf_m998_d_4dr_fulltop",100],
["rhsusf_m998_d_4dr_halftop",100],
["rhsusf_m1152_usarmy_d",100],
["rhsusf_m1043_d_m2",150],
["rhsusf_m1151_m2_v1_usarmy_d",150],
["rhsusf_m1151_m2_v2_usarmy_d",150],
["rhsusf_m1165a1_gmv_m2_m240_socom_d",250],
["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",250],
["UK3CB_B_M939_Closed_DES",250],
["UK3CB_B_M939_Guntruck_DES",250],
["UK3CB_B_M939_Open_DES",250],
["UK3CB_B_M939_Reammo_DES",250],
["UK3CB_B_M939_Recovery_DES",250],
["UK3CB_B_M939_Refuel_DES",250],
["UK3CB_B_M939_Repair_DES",250],
["rhsusf_stryker_m1127_m2_d",500],
["rhsusf_M1220_usarmy_d",500],
["rhsusf_m1240a1_m2_uik_usarmy_d",500],
["UK3CB_B_MaxxPro_M2_US",500],
["B_APC_Tracked_01_CRV_F",500],
["rhsusf_M1220_M2_usarmy_d",750],
["rhsusf_M1230_M2_usarmy_d",750],
["rhsusf_M1232_M2_usarmy_d",750],
["RHS_M2A2",1000],
["RHS_M2A2_BUSKI",1500],
["RHS_M2A3_BUSKIII",2000],
["rhsusf_m1a2sep2d_usarmy",2500],
["RHS_MELB_MH6M",500],
["RHS_MELB_AH6M",750],
["RHS_CH_47F_10",1000],
["RHS_UH60M_d",1000],
["RHS_C130J",1000],
["B_Plane_Fighter_01_F",2000],
["RHS_AH64D",2500],
["Land_BagFence_End_F",1],
["Land_BagFence_Long_F",1],
["Land_BagFence_Round_F",1],
["Land_BagFence_Short_F",1],
["Land_Razorwire_F",5],
["Land_Net_Fence_Gate_F",5],
["Land_HBarrier_3_F",5],
["Land_HBarrier_5_F",5],
["Land_HBarrier_Big_F",5],
["Land_HBarrier_1_F",5],
["Land_Concrete_SmallWall_8m_F",5],
["Land_Concrete_SmallWall_4m_F",5],
["Land_ConcreteHedgehog_01_F",10],
["Land_DragonsTeeth_01_4x2_new_F",10],
["BlockConcrete_F",10],
["Land_RampConcrete_F",10],
["Land_CncShelter_F",10],
["Land_HBarrierWall_corridor_F",10],
["Land_HBarrierWall_corner_F",10],
["Land_HBarrierWall6_F",10],
["Land_HBarrierWall4_F",10],
["Land_CncWall4_F",10],
["Land_CncWall1_F",10],
["Land_BagBunker_Small_F",15],
["Land_Plank_01_4m_F",25],
["Land_Plank_01_8m_F",50],
["UK3CB_B_Searchlight_NATO",25],
["B_Static_Designator_01_F",25],
["RHS_M2StaticMG_D",50],
["RHS_M2StaticMG_MiniTripod_D",50],
["RHS_Stinger_AA_pod_D",100],
["RHS_TOW_TriPod_D",100],
["RHS_M252_D",150],
["RHS_M119_D",250],
["ACE_medicalSupplyCrate",20],
["ACE_medicalSupplyCrate_advanced",25],
["ACE_Box_Chemlights",25],
["ACE_Box_82mm_Mo_Combo",25],
["ACE_Box_82mm_Mo_Illum",25],
["ACE_Box_82mm_Mo_HE",25],
["ACE_Box_82mm_Mo_Smoke",25],
["Land_WoodenBox_F",25],
["B_Slingload_01_Repair_F",100],
["B_Slingload_01_Fuel_F",100],
["B_Slingload_01_Ammo_F",100],
["B_Slingload_01_Cargo_F",100],
["Land_Cargo20_IDAP_F",100],
["Land_Medevac_house_V1_F",250],
["Land_RepairDepot_01_green_F",500],
["Land_Cargo20_blue_F",1000],
["ACE_Track",5],
["ACE_Wheel",5], 
["FlexibleTank_01_sand_F",10],
["ACE_fastropingSupplyCrate",25],
["Box_NATO_AmmoVeh_F",50],
["UK3CB_ARD_O_Hilux_GMG",80],
["UK3CB_ARD_O_Hilux_Rocket_Arty",80],
["UK3CB_ARD_O_Hilux_Dshkm",80],
["UK3CB_ARD_O_Hilux_M2",80],
["UK3CB_ARD_O_Hilux_Metis",80],
["UK3CB_ARD_O_Hilux_Mortar",80],
["UK3CB_ARD_O_Hilux_Pkm",80],
["UK3CB_ARD_O_Hilux_Spg9",80],
["UK3CB_ARD_O_Hilux_Zu23_Front",80],
["UK3CB_ARD_O_Hilux_Zu23",80],
["UK3CB_ARD_O_UAZ_AGS30",80],
["UK3CB_ARD_O_UAZ_MG",80],
["UK3CB_ARD_O_UAZ_SPG9",80],
["UK3CB_ARD_O_2S6M_Tunguska",120],
["UK3CB_ARD_O_MTLB_ZU23",120],
["UK3CB_ARD_O_Ural_Zu23",120],
["UK3CB_ARD_O_ZsuTank",120],
["UK3CB_ARD_O_BMP1",120],
["UK3CB_ARD_O_BMP2",120],
["UK3CB_ARD_O_BMP2K",120],
["UK3CB_ARD_O_BRM1K",120],
["UK3CB_ARD_O_BTR40",120],
["UK3CB_ARD_O_BTR40_MG",120],
["UK3CB_ARD_O_BTR60",120],
["UK3CB_ARD_O_BTR70",120],
["UK3CB_ARD_O_BTR80",120],
["UK3CB_ARD_O_BTR80a",120],
["UK3CB_ARD_O_MTLB_Cannon",120],
["UK3CB_ARD_O_MTLB_BMP",120],
["UK3CB_ARD_O_MTLB_KPVT",120],
["UK3CB_ARD_O_MAZ_543_SCUD",120],
["UK3CB_ARD_O_BM21",120],
["UK3CB_ARD_O_BRDM2",120],
["UK3CB_ARD_O_BRDM2_ATGM",120],
["UK3CB_ARD_O_BRDM2_HQ",120],
["UK3CB_ARD_O_GAZ_Vodnik_Cannon",120],
["UK3CB_ARD_O_GAZ_Vodnik_KVPT",120],
["UK3CB_ARD_O_GAZ_Vodnik_PKT",120],
["UK3CB_ARD_O_T34",160],
["UK3CB_ARD_O_T55",160],
["UK3CB_ARD_O_T72A",160],
["UK3CB_ARD_O_T72B",160],
["UK3CB_ARD_O_T72BM",160],
["UK3CB_ARD_O_T72BA",160],
["UK3CB_ARD_O_T72BB",160],
["UK3CB_ARD_O_T72BC",160]
]] call acex_fortify_fnc_registerObjects;

["acex_fortify_objectPlaced", {
  params ["_player", "_side", "_objectPlaced"];
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
 