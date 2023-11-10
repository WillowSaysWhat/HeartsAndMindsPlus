roleArsenal = {
	params ["_box", "_player"];

	Private _UnitRole = roleDescription _player;

	//Clear the inventory
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	clearWeaponCargoGlobal _box;

	_Role = [];

	if (_UnitRole == "Commander") then
	{_Role = "CO"};

	if (_UnitRole == "Rifleman") then
	{_Role = "RIFLEMAN"};

	if (_UnitRole == "Medic") then
	{_Role = "MEDIC"};

	if (_UnitRole == "Autorifleman") then
	{_Role = "AUTORIFLEMAN"};

	if (_UnitRole == "Engineer") then
	{_Role = "ENGINEER"};

	if (_UnitRole == "Pilot") then
	{_Role = "PILOT"};


	//Empty array of gear to add to the arsenal per player.
	Private _GearToAdd = [];

	//Define the gear for each Role
    Private _DefaultGear = [
        //PRIMARY
		"rhs_weap_ak105_zenitco01_b33",
		"rhs_weap_akm_zenitco01_b33",
		"rhs_weap_akmn_gp25_npz",
		"arifle_Mk20_plain_F",
		"arifle_Mk20_GL_plain_F",
		"rhs_weap_hk416d10",
		"rhs_weap_hk416d10_m320",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m16a4_imod_M203",
		"rhs_weap_m27iar",
		"rhs_weap_m4a1_blockII",
		"rhs_weap_m4a1_blockII_M203_bk",
		"rhs_weap_m4a1_blockII_d",
		"rhs_weap_m4a1_blockII_M203_d",
		"rhs_weap_mk18",
		"rhs_weap_mk18_m320",
		"rhs_weap_mk18_d",
		"uk3cb_auga3_blk",
		"uk3cb_auga3_gl_blk",
        //SECONDARY
		"rhsusf_weap_glock17g4",
		"rhsusf_weap_m1911a1",
		"rhs_weap_M320",
		"rhsusf_weap_m9",
		"UK3CB_BHP",
		"hgun_esd_01_F",
		"ACE_VMH3",
        //LAUNCHER
		"rhs_weap_fim92",
		"rhs_weap_M136",
		"launch_MRAWS_green_F",
		"launch_NLAW_F",
		"rhs_weap_rpg7",
        //HELM
		"H_HelmetSpecB_snakeskin",
		"H_HelmetSpecB_sand",
		"H_HelmetSpecB_paint1",
		"H_HelmetSpecB_paint2",
		"H_HelmetSpecB_blk",
		"H_HelmetSpecB",
		"rhsusf_mich_helmet_marpatwd",
		"rhsusf_mich_helmet_marpatd",
		"rhsusf_mich_bare_tan",
		"rhsusf_mich_bare_semi",
		"rhsusf_mich_bare",
		"rhsusf_lwh_helmet_marpatwd",
		"rhsusf_lwh_helmet_marpatd",
		"rhsusf_lwh_helmet_M1942",
		"rhsusf_opscore_mar_ut",
		"rhsusf_opscore_ut",
		"rhsusf_opscore_rg_cover",
		"rhsusf_opscore_paint",
		"rhsusf_opscore_mc",
		"rhsusf_opscore_mc_cover",
		"rhsusf_opscore_fg",
		"rhsusf_opscore_coy_cover",
		"rhsusf_opscore_bk",
		"rhsusf_opscore_aor2",
		"rhsusf_opscore_aor1",
		"rhsusf_ach_helmet_ucp",
		"rhsusf_ach_helmet_camo_ocp",
		"rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_DCU_early",
		"rhsusf_ach_helmet_DCU",
		"rhsusf_ach_bare_tan",
		"rhsusf_ach_bare_semi",
		"rhsusf_ach_bare_des",
		"UK3CB_TKA_B_H_DES_MARPAT",
		"UK3CB_H_ACH_CC",
		"rhsusf_ach_bare",
		"rhsusf_mich_bare_norotos_alt",
		"rhsusf_mich_bare_norotos_alt_semi",
		"rhsusf_mich_bare_norotos_alt_tan",
        //UNIFORM
		"UK3CB_MEE_O_U_07_C",
		"U_B_CombatUniform_mcam_worn",
		"U_I_G_Story_Protagonist_F",
		"UK3CB_ADM_B_U_Shirt_Pants_01_GRN_TCC",
		"UK3CB_ADM_B_U_Shirt_Pants_01_GRN_DDPM",
		"UK3CB_ADM_B_U_Shirt_Pants_01_GRN_CC",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BRN_TCC",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BRN_DDPM",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BRN_CC",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_TCC",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_DDPM",
		"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_CC",
		"U_B_CombatUniform_mcam_vest",
		"rhsgref_uniform_olive",
		"rhsgref_uniform_og107",
		"rhsgref_uniform_dpm",
		"rhsgref_uniform_altis_lizard",
		"rhsgref_uniform_3color_desert",
		"UK3CB_FIA_B_U_M10_CombatUniform_TRK01_01",
		"UK3CB_FIA_B_U_M10_CombatUniform_MAR01_01",
		"rhs_uniform_g3_tan",
		"rhs_uniform_g3_rgr",
		"rhs_uniform_g3_mc",
		"rhs_uniform_g3_m81",
		"rhs_uniform_g3_blk",
		"rhs_uniform_g3_aor2",
		"rhs_uniform_FROG01_wd",
		"rhs_uniform_FROG01_d",
		"rhs_uniform_cu_ucp",
		"UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_TCC",
		"UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_MAR",
		"UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_DDPM",
		"UK3CB_ADM_B_U_CombatUniform_Shortsleeve_01_CC",
		"rhs_uniform_cu_ocp",
		"UK3CB_ADM_B_U_CombatUniform_01_TCC",
		"UK3CB_ADM_B_U_CombatUniform_01_MAR",
		"UK3CB_ADM_B_U_CombatUniform_01_MAR_DES",
		"UK3CB_ADM_B_U_CombatUniform_01_DDPM",
		"UK3CB_ADM_B_U_CombatUniform_01_CC",
        //VEST
		"rhsusf_spc_iar",
		"rhsusf_plateframe_rifleman",
		"UK3CB_V_MBAV_GRENADIER_BLK",
		"UK3CB_V_MBAV_GRENADIER_MULTI",
		"UK3CB_V_MBAV_GRENADIER_OLI",
		"rhsusf_spcs_ucp_rifleman",
		"rhsusf_spcs_ocp_rifleman",
		"rhsusf_spcs_ucp_rifleman_alt",
		"rhsusf_spcs_ocp_rifleman_alt",
		"rhsusf_spc_rifleman",
		"rhsusf_iotv_ucp_Rifleman",
		"rhsusf_iotv_ocp_Rifleman",
        //BACKPACK
		"B_Bergen_mcamo_F",
		"B_Bergen_hex_F",
		"B_Bergen_dgtl_F",
		"UK3CB_B_Small_Pack",
		"UK3CB_B_Carryall_TRK",
		"B_Carryall_oli",
		"B_Carryall_mcamo",
		"B_Carryall_khk",
		"B_Carryall_ocamo",
		"B_Carryall_cbr",
		"B_Carryall_blk",
		"UK3CB_B_AssaultPack_TRK",
		"UK3CB_GAF_B_B_ASS_TAN",
		"UK3CB_GAF_B_B_ASS_OLI",
		"B_Kitbag_tan",
		"B_Kitbag_sgg",
		"B_Kitbag_mcamo",
		"B_Kitbag_rgr",
		"B_Kitbag_cbr",
		"B_Parachute",
		"ACE_TacticalLadder_Pack",
		"TFAR_rt1523g_sage",
		"TFAR_rt1523g_black",
		"B_Respawn_TentDome_F",
		"B_UAV_01_backpack_F",
        //FACEWARE
		"G_Balaclava_blk",
		"G_Balaclava_combat",
		"G_Balaclava_oli",
		"G_Balaclava_Flecktarn",
		"G_Balaclava_Scarecrow_01",
		"G_Balaclava_Skull1",
		"G_Balaclava_Tropentarn",
		"UK3CB_G_Ballistic_Black_Gloves_Green",
		"UK3CB_G_Ballistic_Black_Gloves_Tan",
		"UK3CB_G_Ballistic_Black_Gloves_Black",
		"UK3CB_G_Ballistic_Black_Gloves_Black_Headset",
		"UK3CB_G_Ballistic_Black_Gloves_Green_Headset",
		"UK3CB_G_Ballistic_Black_Gloves_Tan_Headset",
		"UK3CB_G_Ballistic_Shemagh_Green_Gloves_Black",
		"UK3CB_G_Ballistic_Shemagh_Tan_Gloves_Black",
		"UK3CB_G_Ballistic_Shemagh_White_Gloves_Black",
		"UK3CB_G_Ballistic_Shemagh_Green_Tactical_Gloves_Black",
		"UK3CB_G_Ballistic_Shemagh_Tan_Tactical_Gloves_Black",
		"UK3CB_G_Ballistic_Shemagh_White_Tactical_Gloves_Black",
		"UK3CB_G_Ballistic_Black_Shemagh_Green",
		"UK3CB_G_Ballistic_Black_Shemagh_Tan",
		"UK3CB_G_Ballistic_Black_Shemagh_White",
		"UK3CB_G_Ballistic_Black_Tactical_Gloves_Green",
		"UK3CB_G_Ballistic_Black_Tactical_Gloves_Tan",
		"UK3CB_G_Ballistic_Black_Tactical_Gloves_Black",
		"G_Bandanna_beast",
		"G_Bandanna_blk",
		"G_Bandanna_CandySkull",
		"G_Bandanna_khk",
		"G_Bandanna_oli",
		"G_Bandanna_Skull1",
		"G_Bandanna_Skull2",
		"G_Bandanna_tan",
		"G_Bandanna_Vampire_01",
		"G_Combat",
		"UK3CB_G_Gloves_Black_Shemagh_Green",
		"UK3CB_G_Gloves_Black_Shemagh_Tan",
		"UK3CB_G_Gloves_Black_Shemagh_White",
		"UK3CB_G_Gloves_Green_Shemagh_Green",
		"UK3CB_G_Gloves_Green_Shemagh_Tan",
		"UK3CB_G_Gloves_Green_Shemagh_White",
		"UK3CB_G_Gloves_Tan_Shemagh_Green",
		"UK3CB_G_Gloves_Tan_Shemagh_Tan",
		"UK3CB_G_Gloves_Tan_Shemagh_White",
        "UK3CB_G_Neck_Shemag_Oli",
		"UK3CB_G_Neck_Shemag_Tan",
		"UK3CB_G_Neck_Shemag",
		"G_Shades_Black",
		"G_Shades_Blue",
		"G_Shades_Green",
		"G_Shades_Red",
		"rhsusf_shemagh_grn",
		"rhsusf_shemagh2_grn",
		"rhsusf_shemagh_od",
		"rhsusf_shemagh2_od",
		"rhsusf_shemagh_tan",
		"rhsusf_shemagh2_tan",
		"rhsusf_shemagh_white",
		"rhsusf_shemagh2_white",
		"G_Sport_Red",
		"G_Sport_Blackyellow",
		"G_Sport_BlackWhite",
		"G_Sport_Blackred",
		"G_Tactical_Clear",
		"UK3CB_G_Tactical_Black",
		"UK3CB_G_Tactical_Black_Gloves_Black",
		"UK3CB_G_Tactical_Black_Shemagh_Green",
		"UK3CB_G_Tactical_Black_Shemagh_Tan",
		"UK3CB_G_Tactical_Black_Shemagh_White",
		"UK3CB_G_Tactical_Black_Shemagh_Green_Gloves_Black",
		"UK3CB_G_Tactical_Black_Shemagh_Tan_Gloves_Black",
		"UK3CB_G_Tactical_Black_Shemagh_White_Gloves_Black",
        "G_Spectacles_Tinted",
		//NVGS
		"ACE_NVG_Gen4_Black",
		"ACE_NVG_Gen4",
		"ACE_NVG_Gen4_Green",
        //BINOCULARS
		"Binocular",
		"Laserdesignator",
		"Rangefinder",
		"Laserbatteries",
		"ACE_Vector",
		//TERMINAL
		"ItemAndroid",
		"ItemcTab",
		"ItemMicroDAGR",
        //RADIO
		"TFAR_anprc152",
        //SIGHTS
		"rhs_acc_pgo7v",
		"optic_Arco_blk_F",
		"optic_Arco",
		"optic_Holosight_blk_F",
		"optic_Holosight",
		"rhsusf_acc_g33_xps3",
		"rhsusf_acc_g33_xps3_tan",
		"optic_MRCO",
		"optic_Hamr",
		"rhsusf_acc_ACOG",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_eotech_552_d",
		"rhsusf_acc_compm4",
		"optic_ERCO_blk_F",
		"optic_ERCO_khk_F",
		"optic_ERCO_snd_F",
		"rhsusf_acc_su230a_mrds",
		"rhsusf_acc_su230a_mrds_c",
		"rhsusf_acc_ACOG_RMR",
		"rhsusf_acc_ACOG_d",
		"rhsusf_acc_eotech_xps3",
		//RAIL
		"acc_flashlight_pistol",
		"rhsusf_acc_M952V",
		"rhsusf_acc_anpeq15side_bk",
		"rhsusf_acc_anpeq15",
		"rhsusf_acc_anpeq15_bk",
		//MUZZLE
		"rhsusf_acc_omega9k",
		"rhs_acc_dtk3",
		"rhs_acc_tgpa",
		"rhsusf_acc_nt4_black",
		"rhsusf_acc_nt4_tan",
		"rhsusf_acc_SFMB556",
		"rhs_acc_dtk1l",
		"rhs_acc_pbs1",
		//BIPOD
		"rhsusf_acc_grip2",
		"rhsusf_acc_grip_m203_blk",
		"rhsusf_acc_grip2_tan",
		"rhsusf_acc_grip1",
		"rhsusf_acc_kac_grip",
		"rhsusf_acc_rvg_blk",
		"rhsusf_acc_tacsac_blk",
		"rhsusf_acc_tdstubby_blk",
		"rhsusf_acc_grip3",
		"bipod_01_F_blk",
		"bipod_01_F_snd",
		//ROCKETSMISSILES
		"rhs_fim92_mag",
		"MRAWS_HE_F",
		"MRAWS_HEAT55_F",
		"MRAWS_HEAT_F",
		"rhs_rpg7_PG7VL_mag",
		//PRIMARYAMMO
		"rhs_30Rnd_545x39_7N22_AK",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_30Rnd_762x39mm_tracer",
		"UK3CB_MG3_250rnd_762x51_GT",
		"rhsusf_200Rnd_556x45_mixed_soft_pouch",
		"200Rnd_65x39_cased_Box_Tracer_Red",
		//SECAMMO
		"rhsusf_mag_17Rnd_9x19_FMJ",
		"rhsusf_mag_17Rnd_9x19_JHP",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_15Rnd_9x19_FMJ",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"UK3CB_BHP_9_13Rnd",
		"1Rnd_HE_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_SmokeRed_Grenade_shell",
		"rhs_VOG25",
		"rhs_VG40OP_green",
		"rhs_VG40OP_red",
		"rhs_VG40OP_white",
		"UGL_FlareGreen_F",
		"UGL_FlareRed_F",
		"UGL_FlareWhite_F",
		"UGL_FlareYellow_F",
		//GRENADES
		"rhs_mag_an_m14_th3",
		"SmokeShell",
		"B_IR_Grenade",
		"ACE_HandFlare_Green",
		"ACE_HandFlare_Red",
		"ACE_HandFlare_White",
		"ACE_HandFlare_Yellow",
        "SmokeShellGreen",
		"SmokeShellPurple",
		"SmokeShellRed",
		"rhs_mag_m67",
		"rhs_mag_mk84",
		//EXPLOSIVES
		//TOOLS
		"ACE_RangeTable_82mm",
		"ACE_artilleryTable",
		"ACE_DefusalKit",
		"ACE_EntrenchingTool",
		"ACE_Flashlight_MX991",
		"ACE_M26_Clacker",
		"ACE_Clacker",
		"ACE_Flashlight_XL50",
		"ACE_MapTools",
		"ACE_microDAGR",
		"ACE_wirecutter",
		//MEDICAL
		"ACE_personalAidKit",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_bloodIV",
		"ACE_bloodIV_250",
		"ACE_bloodIV_500",
		"ACE_bodyBag",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_splint",
		"ACE_tourniquet",
		"kat_Painkillers",
		//MISC
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ItemcTabHCam",
		"ACE_IR_Strobe_Item",
		"ACE_rope6",
		"ACE_rope12",
		"ACE_rope27",
		"ACE_SpraypaintBlack",
		"ACE_SpraypaintGreen",
		"ACE_SpraypaintRed",
		"ACE_UAVBattery",
		"ItemMap",
		"ItemCompass",
		"ACE_Altimeter",
		"ACE_HuntIR_monitor",
		"ACE_Banana",
		"ACE_HuntIR_M203",
		"B_UavTerminal",
		"muzzle_antenna_01_f",
		"muzzle_antenna_02_f",
		"ItemWatch"
    ];

    Private _CO = [
        //MISC ITEMS
		"ACE_Fortify"
      ];

      Private _RIFLEMAN = [
        //PRIMARY
		"rhs_weap_m24sws",
		"rhs_weap_m14_socom_rail",
		"rhsusf_5Rnd_762x51_m62_Mag",
		"rhsusf_20Rnd_762x51_m62_Mag",
		"rhsusf_acc_premier_mrds",
		"rhsusf_acc_m24_muzzlehider_black",
		"rhsusf_acc_m24_silencer_black",
		"rhsusf_acc_m14_flashsuppresor",
		"rhsgref_sdn6_suppressor",
		"rhsusf_acc_harris_swivel"
      ];

      Private _MEDIC = [
		"rhs_weap_M590_8RD",
		"rhs_weap_M590_5RD",
		"rhsusf_5Rnd_00Buck",
		"rhsusf_5Rnd_Slug",
		"rhsusf_8Rnd_00Buck",
		"rhsusf_8Rnd_Slug",
        //MEDICAL
		"kat_IV_16",
		"ACE_adenosine",
		"kat_AED",
		"kat_X_AED",
		"kat_plate",
		"kat_clamp",
		"kat_EACA",
		"kat_etomidate",
		"kat_IO_FAST",
		"kat_flumazenil",
		"kat_lidocaine",
		"kat_lorazepam",
		"kat_naloxone",
		"kat_nitroglycerin",
		"kat_norepinephrine",
		"kat_phenylephrine",
		"kat_phenylephrine_inject",
		"kat_retractor",
		"kat_scalpel",
		"kat_Carbonate",
		"ACE_surgicalKit",
		"kat_TXA"
      ];

      Private _AUTORIFLEMAN = [
        //PRIMARY
		"rhs_weap_m240B",
		"rhsusf_acc_ACOG_MDO",
		"rhs_weap_m249_pip_ris",
		"rhsusf_acc_saw_bipod",
		"rhsusf_acc_grip4",
		"rhsusf_acc_grip4_bipod",
		"rhsusf_acc_saw_lw_bipod",
		"rhsusf_acc_ARDEC_M240",
		"muzzle_snds_H_MG",
		"muzzle_snds_H_MG_blk_F",
		"UK3CB_MG3_250rnd_762x51_GT",
		"rhsusf_100Rnd_762x51_m62_tracer",
		"UK3CB_M60",
		"LMG_Mk200_F"
      ];

      Private _ENGINEER = [
        //MISC ITEMS
		"ToolKit",
		"rhsusf_m112_mag",
		"rhsusf_m112x4_mag",
		"SatchelCharge_Remote_Mag",
		"ACE_Fortify",
		"ATMine_Range_Mag"
      ];

      Private _PILOT = [
        //HELM
		"H_CrewHelmetHeli_B",
		"H_PilotHelmetHeli_B",
		"rhsusf_hgu56p_black",
		"rhsusf_hgu56p_mask_black",
		"rhsusf_hgu56p_mask_black_skull",
		"rhsusf_hgu56p_visor_black",
		"rhsusf_hgu56p_visor_mask_black",
		"rhsusf_hgu56p_visor_mask_Empire_black",
		"rhsusf_hgu56p_visor_mask_black_skull",
		"rhsusf_hgu56p_tan",
		"rhsusf_hgu56p_mask_tan",
		"rhsusf_hgu56p_visor_tan",
		"rhsusf_hgu56p_visor_mask_tan",
		"rhsusf_ihadss",
		"RHS_jetpilot_usaf",
        //UNIFORM
		"U_B_HeliPilotCoveralls",
		"U_I_HeliPilotCoveralls",
		//VEST
		"UK3CB_V_Pilot_Vest",
		"UK3CB_V_Pilot_Vest_Black",
		"UK3CB_V_Pilot_Vest_MTP",
		//MISC
		"ToolKit"	
      ];

	


	switch (_Role) do {
	case "CO": {
		_GearToAdd = _DefaultGear + _CO;
	};
	case "RIFLEMAN": {
		_GearToAdd = _DefaultGear + _RIFLEMAN;
	};
	case "MEDIC": {
		_GearToAdd = _DefaultGear + _MEDIC;
	};
	case "AUTORIFLEMAN": {
		_GearToAdd = _DefaultGear + _AUTORIFLEMAN;
	};
	case "ENGINEER": {
		_GearToAdd = _DefaultGear + _ENGINEER;
	};
	case "PILOT": {
		_GearToAdd = _DefaultGear + _PILOT;
	};
	default {
		_GearToAdd = _DefaultGear + ["ACE_Banana"];
	};
	};

	[_box, false] call ace_arsenal_fnc_removeBox;
	[_box, _GearToAdd, false] call ace_arsenal_fnc_initBox;
}