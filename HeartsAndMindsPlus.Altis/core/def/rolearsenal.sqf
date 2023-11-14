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
       	 	"Rhs_weap_m16a4_imod",
			"rhs_weap_m16a4_imod_M203",
        	"Rhs_weap_m27iar",
			"rhs_weap_m4a1_blockII_KAC",
        	"rhs_weap_m4a1_blockII_M203",
        	"Rhs_weap_mk18",
        	"rhs_weap_mk18_m320",
        //SECONDARY
       	 	"Rhsusf_weap_glock17g4",
			"rhs_weap_M320",
			"Rhsusf_weap_m9",
       	 	"hgun_esd_01_F",
      	  	"ACE_VMH3",
        //LAUNCHER
        	"Rhs_weap_fim92",
        	"rhs_weap_M136",
        	"rhs_weap_M136_hedp",
       	 	"rhs_weap_M136_hp",
        	"launch_MRAWS_green_F",
        //HELM
			"Rhs_8point_marpatd",
			"Rhsusf_mich_helmet_marpatd",
			"Rhsusf_mich_helmet_marpatd_alt",
			"Rhsusf_mich_helmet_marpatd_alt_headset",
			"Rhsusf_mich_helmet_marpatd_headset",
			"Rhsusf_mich_helmet_marpatd_norotos",
			"Rhsusf_mich_helmet_marpatd_norotos_arc",
			"Rhsusf_mich_helmet_marpatd_norotos_arc_headset",
			"Rhsusf_mich_helmet_marpatd_norotos_headset",
			"Rhsusf_lwh_helmet_marpatd_headset",
			"Rhsusf_lwh_helmet_marpatd_ess",
			"Rhsusf_lwh_helmet_marpatd",
			"Rhs_booniehat2_marpatd",
			"Rhsusf_cvc_alt_helmet",
			"rhsusf_cvc_ess",
        //UNIFORMS
			"Rhs_uniform_cu_ocp",
			"rhs_uniform_FROG01_d",
        //VEST
			"Rhsusf_mbav_rifleman",
			"Rhsusf_mbav_medic",
			"Rhsusf_mbav_mg",
			"Rhsusf_mbav_light",
			"Rhsusf_mbav_grenadier",
			"Rhsusf_mbav",
        //BACKPACK
			"B_Respawn_TentDome_F",
			"B_Patrol_Respawn_bag_F",
			"TFAR_rt1523g_sage",
			"TFAR_anprc155_coyote",
			"ACE_TacticalLadder_Pack",
			"B_UAV_01_backpack_F",
			"B_Parachute",
			"B_Carryall_cbr",
			"B_Bergen_mcamo_F",
			"Rhsusf_assault_eagleaiii_coy",
			"rhsusf_falconii_coy",
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
        //BINOCULARS
			"Binocular",
			"Laserdesignator",
			"Rangefinder",
			"Laserbatteries",
			"ACE_Vector",
        //RADIO
			"TFAR_anprc152",
        //SIGHTS
			"rhsusf_acc_ACOG_USMC",
			"optic_Arco_AK_blk_F",
			"optic_Holosight_blk_F",
			"rhsusf_acc_EOTECH",
			"rhsusf_acc_g33_T1",
			"Rhsusf_acc_g33_xps3",
			"optic_MRCO",
			"optic_Hamr",
			"rhsusf_acc_ACOG",
			"Rhsusf_acc_eotech_552",
			"Rhsusf_acc_compm4",
			"optic_ERCO_blk_F",
			"Rhsusf_acc_su230",
			"Rhsusf_acc_su230_mrds",
			"rhsusf_acc_ACOG_RMR",
			"rhsusf_acc_eotech_xps3",
        //RAIL
			"Rhsusf_acc_anpeq15side_bk",
			"Rhsusf_acc_anpeq15_bk",
			"rhsusf_acc_M952V",
        //MUZZLE
			"Rhsusf_acc_nt4_black",
			"rhsusf_acc_SFMB556",
			"rhsusf_acc_ARDEC_M240",
			"ACE_muzzle_mzls_B",
			"muzzle_snds_H_MG_blk_F",
        //BIPOD
			"Rhsusf_acc_grip2",
			"bipod_01_F_blk",
			"Rhsusf_acc_grip1",
			"Rhsusf_acc_harris_bipod",
			"Rhsusf_acc_kac_grip",
			"Rhsusf_acc_rvg_blk",
			"Rhsusf_acc_tacsac_blk",
			"Rhsusf_acc_tdstubby_blk",
			"rhsusf_acc_grip3",
        //MAGAZINES
 
        	"“rhsusf_20Rnd_762x51_m118_special_Mag”",
        	"“rhsusf_20Rnd_762x51_m62_Mag”",
        	"“rhsusf_20Rnd_762x51_m80_Mag”",
			"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
			"rhs_mag_30Rnd_556x45_Mk262_Stanag",
			"rhs_mag_30Rnd_556x45_Mk318_Stanag",
			"ACE_HuntIR_M203",
			"rhs_mag_M441_HE",
			"ACE_40mm_Flare_white",
			"ACE_40mm_Flare_green",
			"ACE_40mm_Flare_red",
			"ACE_40mm_Flare_ir",
			"1Rnd_SmokeGreen_Grenade_shell",
			"1Rnd_SmokeRed_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeYellow_Grenade_shell",
			"rhsusf_100Rnd_762x51_m61_ap",
			"rhsusf_100Rnd_762x51_m62_tracer",
			"rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp",
        //GRENADES
			"ACE_HandFlare_Green",
			"ACE_HandFlare_Red",
			"ACE_HandFlare_White",
			"ACE_HandFlare_Yellow",
			"SmokeShellGreen",
			"SmokeShellRed",
			"SmokeShell",
			"SmokeShellYellow",
			"Rhs_mag_mk84",
			"Rhs_grenade_mki_mag",
			"ACE_Chemlight_HiGreen",
			"ACE_Chemlight_HiRed",
			"ACE_Chemlight_HiWhite",
			"ACE_Chemlight_HiYellow",
			"ACE_Chemlight_IR",
			"B_IR_Grenade",
			"rhs_mag_m67",
        //EXPLOSIVES
			"DemoCharge_Remote_Mag",
			"ATMine_Range_Mag",
        //TOOLS
			"ACE_RangeTable_82mm",
			"ACE_artilleryTable",
			"ACE_DefusalKit",
			"ACE_EntrenchingTool",
			"ACE_Flashlight_MX991",
			"ACE_HuntIR_monitor",
			"ACE_Kestrel4500",
			"ACE_M26_Clacker",
			"ACE_Flashlight_XL50",
			"ACE_MapTools",
			"Acex_intelitems_notepad",
			"ACE_RangeCard",
			"ACE_wirecutter",
        //MEDICAL
			"ACE_fieldDressing",
			"ACE_elasticBandage",
			"ACE_packingBandage",
			"ACE_quikclot",
			"ACE_salineIV",
			"ACE_salineIV_250",
			"ACE_salineIV_500",
			"ACE_plasmaIV",
			"ACE_plasmaIV_250",
			"ACE_plasmaIV_500",
			"ACE_bodyBag",
			"ACE_bodyBag_blue",
			"ACE_bodyBag_white",
			"ACE_epinephrine",
			"ACE_morphine",
			"ACE_personalAidKit",
			"ACE_splint",
			"ACE_tourniquet",
        //MISC ITEMS
        	"ACE_SpraypaintRed",
			"ACE_SpareBarrel",
			"ACE_IR_Strobe_Item",
			"ItemcTabHCam",
			"ACE_Banana",
			"ACE_EarPlugs",
			"ACE_CableTie",
			"ItemWatch",
			"ACE_Altimeter",
			"ItemCompass",
			"ACE_NVG_Gen4_Black",
			"ACE_NVG_Gen4",
			"ACE_NVG_Gen4_Green",
			"ItemAndroid",
			"ItemMicroDAGR",
			"ItemcTab",
			"B_UavTerminal",
			"ItemMap",
			"ACE_Vector"
        
      ];

    Private _CO = [
        //MISC ITEMS
			"ACE_Fortify"
      ];

      Private _RIFLEMAN = [
        //PRIMARY
			"rhs_weap_sr25_ec",
			"Rhs_weap_m24sws",
			"rhs_weap_XM2010",
			"rhsusf_acc_M2010S",
			"rhsusf_5Rnd_300winmag_xm2010",
			//SIGHTS
			"Rhsusf_acc_premier_mrds",
			"optic_Nightstalker",
			"rhs_weap_XM2010",
			"rhsusf_acc_M2010S",
			"rhsusf_5Rnd_300winmag_xm2010",
			"optic_AMS"
      ];

      Private _MEDIC = [
        //MEDICAL
			"kat_IV_16",
			"ACE_adenosine",
			"kat_AED",
			"kat_X_AED",
			"ACE_bloodIV",
			"ACE_bloodIV_250",
			"ACE_bloodIV_500",
			"Kat_plate",
			"Kat_clamp",
			"kat_EACA",
			"Kat_etomidate",
			"kat_IO_FAST",
			"Kat_flumazenil",
			"Kat_lidocaine",
			"Kat_lorazepam",
			"Kat_naloxone",
			"Kat_nitroglycerin",
			"Kat_norepinephrine",
			"Kat_phenylephrine",
			"Kat_phenylephrine_inject",
			"Kat_retractor",
			"Kat_scalpel",
			"ACE_surgicalKit",
			"ACE_suture",
			"kat_TXA" 
      ];

      Private _AUTORIFLEMAN = [
        //PRIMARY
			"rhs_weap_m240B",
			"Rhs_weap_m249_pip_ris",
			//SIGHTS
			"rhsusf_acc_ELCAN",
			"rhsusf_acc_ELCAN_ard",
			"optic_SOS",
			//BIPOD
			"Rhsusf_acc_saw_bipod",
			"Rhsusf_acc_grip4",
			"Rhsusf_acc_grip4_bipod",
			"rhsusf_acc_saw_lw_bipod"        
      ];

      Private _ENGINEER = [
        //MISC ITEMS
        	"ToolKit",
			"ACE_Fortify"
      ];

      Private _PILOT = [
        //MISC ITEMS
        	"ToolKit",
        //HELM
			"Rhsusf_hgu56p_tan",
			"Rhsusf_hgu56p_mask_tan",
			"Rhsusf_hgu56p_visor_tan",
			"Rhsusf_hgu56p_visor_mask_tan",
			"rhsusf_ihadss"
        //VEST
        //UNIFORM
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