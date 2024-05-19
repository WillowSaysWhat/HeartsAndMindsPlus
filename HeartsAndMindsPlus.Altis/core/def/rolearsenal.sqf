roleArsenal = { 
	params ["_box", "_player"];

	Private _UnitRole = roleDescription _player;

	//Clear the inventory
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	clearWeaponCargoGlobal _box;

	_Role = [];

	if (_UnitRole == "Commander@COMPANY") then
	{_Role = "CO"};

	if (_UnitRole == "Rifleman") then
	{_Role = "RIFLEMAN"};

	if (_UnitRole == "Medic") then
	{_Role = "MEDIC"};

	if (_UnitRole == "Autorifleman") then
	{_Role = "AUTORIFLEMAN"};

	if (_UnitRole == "Engineer") then
	{_Role = "ENGINEER"};

	if (_UnitRole == "Pilot@PILOTS") then
	{_Role = "PILOT"};


	//Empty array of gear to add to the arsenal per player.
	Private _GearToAdd = [];

	//Define the gear for each Role
        Private _DefaultGear = [
			// Uniforms
			"ranger_pcu1",
			"ranger_pcu2",
			"ranger_acu1_tab_item",
			"ranger_acu2_tab_item",
			"ranger_acu3_tab_item",
			"ranger_acu4_tab_item",
			"ranger_patagonia_eod_g2_mc",
			"ranger_patagonia_jtac_g2_mc",
			"ranger_patagonia_med_g2_mc",
			"ranger_rugby_1",

			// Helment
			"75th_opscore10_off",
			"75th_opscore_com_PS",
			"75th_opscore1",
			"75th_opscore10",
			"75th_opscore11",
			"75th_opscore8_off",
			"75th_opscore6",

			// Vests
			"ranger_avs_1pl",
			"ranger_avs_1ps",
			"ranger_avs_1sg",
			"ranger_avs_2pl",
			"ranger_avs_T",
			"ranger_avs_xo",
			"ranger_avs1",
			"ranger_avs10",
			"ranger_avs2",
			"ranger_avs3",
			"ranger_avs5",
			"ranger_avs6",
			"ranger_avs7",
			"ranger_avs8",
			"ranger_avs9",

			// Backpack
			"ranger_pack_1",
			"ranger_pack_1_wc",
			"ranger_pack_3",
			"ranger_pack_4",
			"tfw_ilbe_whip_coy",
			"tfw_ilbe_whip_gr",
			"tfw_ilbe_whip_mc",
			"CUP_B_Raid_bag_SSO_Ataka_2_Khaki",
			"CUP_B_Raid_bag_SSO_Ataka_2_Rug_Khaki",
			"ace_gunbag",
			"ace_gunbag_Tan",
			"B_Parachute",
			"kat_stretcherBag",

			// Smokes/Grenades 
			"ACE_M14",
			"rhs_mag_an_m8hc",
			"rhs_mag_m18_green",
			"rhs_mag_m18_purple",
			"rhs_mag_m18_red",
			"ACE_HandFlare_White",
			"ACE_HandFlare_Red",
			"ACE_HandFlare_Green",
			"B_IR_Grenade",
			"ACE_CTS9",
			"ACE_Chemlight_UltraHiOrange",
			"ACE_Chemlight_HiWhite",
			"ACE_Chemlight_HiRed",
			"ACE_Chemlight_HiGreen",
			"rhs_mag_m67",

			// Base Explosives
			"rhsusf_m112_mag",
			"rhsusf_m112x4_mag",
			"SLAMDirectionalMine_Wire_Mag",
			"ACE_FlareTripMine_Mag",

			// FACEWARE 
			"75th_rayban_perscription",
			"75th_m_frame_blackclear",
			"75th_m_frame_blackpurple",
			"75th_m_frame_tanclear",
			"75th_m_frame_tanshaded",
			"75th_m_frame_blackshaded",
			"CUP_G_Tan_Scarf_Shades_Beard_Blonde",
			"CUP_G_Tan_Scarf_Shades_Beard",
			"CUP_G_ESS_BLK_Facewrap_Black",
			"CUP_G_ESS_KHK_Facewrap_Tan",
			"CUP_G_Oakleys_Clr",
			"CUP_G_Oakleys_Drk",
			"CUP_G_Oakleys_Embr",
			
			// NVGS
			"ranger_nvg2",
			"ranger_nvg2_1",
			"NVGoggles_OPFOR",
			"CUP_NVG_GPNVG_black_WP",
			"ACE_NVG_Gen4_Black",
			"ACE_NVG_Gen4_Black_WP",
			"ACE_NVG_Wide_Black",
			"ACE_NVG_Wide_Black_WP",

			// Gameplay Tools
			"ACE_TacticalLadder_Pack",
			"B_Respawn_TentDome_F",
			"ACE_wirecutter",
			"ACE_SpraypaintRed",
			"ACE_VMH3",
			"hgun_esd_01_F",

			// Radio/Map/Terminal 
			"ItemMap",
			"ItemGPS",
			"B_UavTerminal",
			"ItemAndroid",
			"ItemcTab",
			"ItemMicroDAGR",
			"FIR_PDU",
			"TFAR_anprc152",
			"ItemCompass",
			"ItemWatch",
			"ACE_Altimeter",
			"TFAR_microdagr",
			"Binocular",
			"Laserdesignator",
			"Rangefinder",
			"ACE_MX2A",
			"ACE_Vector",
			"ACE_Yardage450",
			"CUP_SOFLAM",
			"rhsusf_bino_leopold_mk4",
			"ACE_Flashlight_Maglite_ML300L",

			// Secondary
			"121_serbu_breacher",
			"75th_Ranger_G19",
			"75th_Ranger_G19_KKM",
			"CUP_hgun_M17_Coyote",
			"CUP_hgun_M9A1",
			"rhs_weap_M320",

			// Ammunition
			"121_serbu_breacher",
			"rhsusf_mag_17Rnd_9x19_FMJ",
			"rhsusf_mag_17Rnd_9x19_JHP",
			"CUP_17Rnd_9x19_glock17",
			"CUP_17Rnd_9x19_M17_Coyote",
			"CUP_21Rnd_9x19_M17_Coyote",
			"rhsusf_mag_15Rnd_9x19_FMJ",
			"rhsusf_mag_15Rnd_9x19_JHP",
			"CUP_15Rnd_9x19_M9",
			"rhs_fgm148_magazine_AT",
			"rhs_fim92_mag",
			"rhs_mag_maaws_HE",
			"rhs_mag_maaws_HEDP",
			"rhs_mag_maaws_HEAT",
			"ranger_200Rnd_762x51_m62_tracer",
			"ranger_200Rnd_762x51_m80a1epr",
			"ranger_100rnd_762_M62",
			"ranger_100rnd_762_EPR",
			"ranger_30Rnd_556_M855A1_Tan",
			"ranger_30Rnd_556_M995_AP_Tan",
			"ACE_HuntIR_M203",
			"UGL_FlareCIR_F",
			"UGL_FlareWhite_F",
			"CUP_1Rnd_StarCluster_White_M203",
			"CUP_1Rnd_StarFlare_White_M203",
			"rhs_mag_M397_HET",
			"rhs_mag_M433_HEDP",
			"rhs_mag_M441_HE",
			"ACE_40mm_Flare_ir",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeRed_Grenade_shell",
			"rhs_mag_M781_Practice",
			"121_2Rnd_Slug",
			"rhsusf_8Rnd_00Buck",
			"rhsusf_8Rnd_Slug",
			"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
			"rhs_mag_30Rnd_556x45_M855A1_Stanag",
			"rhs_mag_30Rnd_556x45_M855_Stanag",
			"rhs_mag_30Rnd_556x45_Mk262_Stanag",
			"rhs_mag_30Rnd_556x45_Mk318_Stanag",
			"rhsusf_200Rnd_556x45_mixed_soft_pouch",
			"200Rnd_65x39_cased_Box_Tracer_Red",
			"rhs_mag_20Rnd_SCAR_762x51_m80_ball",
			"rhs_mag_20Rnd_SCAR_762x51_m62_tracer",
			"rhs_mag_20Rnd_SCAR_762x51_m61_ap",
			"rhsusf_100Rnd_762x51",
			"rhsusf_100Rnd_762x51_m62_tracer",
			"rhsusf_100Rnd_762x51_m61_ap",
			"rhsusf_5Rnd_300winmag_xm2010",
			"rhsusf_100Rnd_762x51_m80a1epr",
			"rhsusf_20Rnd_762x51_m62_Mag",
			
			// MISC 
			"ACE_RangeTable_82mm",
			"ACE_artilleryTable",
			"Attachable_Helistretcher",
			"ACE_Cellphone",
			"ACE_DefusalKit",
			"ACE_EntrenchingTool",
			"ACE_Flashlight_MX991",
			"ACE_HuntIR_monitor",
			"ACE_Kestrel4500",
			"ACE_Clacker",
			"ACE_Flashlight_XL50",
			"ACE_MapTools",
			"ACE_microDAGR",
			"acex_intelitems_notepad",
			"ACE_PlottingBoard",
			"ACE_RangeCard",
			"ACE_SpottingScope",
			"ACE_Tripod",
			"ToolKit",
			"ACE_Banana",
			"ACE_Can_RedGull",
			"ACE_WaterBottle",
			"ACE_Humanitarian_Ration",
			"ACE_CableTie",
			"ACE_EarPlugs",
			"ItemcTabHCam",
			"ACE_IR_Strobe_Item",
			"ace_marker_flags_red",
			"ACE_SpareBarrel",
			"ACE_UAVBattery",
			"Laserbatteries",

			// Medical
			"kat_IV_16",
			"kat_aatKit",
			"kat_accuvac",
			"ACE_andenosine",
			"kat_X_AED",
			"kat_CarbonateItem",
			"kat_AED",
			"ACE_fieldDressing",
			"ACE_elasticBandage",
			"ACE_packingBandage",
			"ACE_quikclot",
			"ACE_bloodIV",
			"ACE_bloodIV_250",
			"ACE_bloodIV_500",
			"ACE_bodybag",
			"kat_plate",
			"kat_BVM",
			"kat_CaffeineItem",
			"kat_chestseal",
			"kat_clamp",
			"kat_vacuum",
			"kat_EACA",
			"ACE_epinephrine",
			"kat_etomidate",
			"kat_IO_FAST",
			"kat_flumazenil",
			"kat_guedel",
			"kat_ketamine",
			"kat_larynx",
			"kat_lidocaine",
			"kat_lorazepam",
			"kat_suction",
			"ACE_morphine",
			"kat_naloxone",
			"kat_nitroglycerin",
			"kat_norepinephrine",
			"kat_PainkillerItem",
			"kat_PenthroxItem",
			"ACE_personalAidKit",
			"kat_PervitinItem",
			"kat_phenylephrine",
			"ACE_plasmaIV",
			"ACE_plasmaIV_250",
			"ACE_plasma_500",
			"kat_pocketBVM",
			"kat_oxygenTank_150_Item",
			"kat_oxygenTank_300_Item",
			"kat_Pulseoximeter",
			"kat_retractor",
			"ACE_salineIV",
			"ACE_salineIV_250",
			"ACE_salineIV_500",
			"kat_scalpel",
			"ACE_splint",
			"kat_stethoscope",
			"ACE_surgicalKit",
			"ACE_suture",
			"ACE_tourniquet",
			"kat_TXA",

			// Attachments
			"acc_flashlight_pistol",
			"muzzle_snds_L",
			"optic_MRD",
			"75th_Ranger_x300u_1",
			"75th_glock_rmr",
			"75th_glock_rmr_3moa",
			"75th_glock_rmr_6moa",
			"75th_SU230B",
			"75th_Eotech_553",
			"75th_Eotech_553_up",
			"75th_Eotech_EXPS3",
			"75th_Eotech_EXPS3_up",
			"75th_Ranger_sideM240L_LASER",
			"75th_Ranger_sideM240L_2_LASER",
			"75th_SU278_SKEETIR",
			"75th_Vortex_Gen2_2",
			"75th_Vortex_Gen2",
			"75th_unity_t1",
			"75th_Eotech_EXPS3_up",
			"75th_Eotech_EXPS3",
			"75th_Eotech_553_up",
			"75th_Eotech_553",
			"75th_SU230B",
			"75th_SU230A_MRDS",
			"75th_SU230A",
			"75th_SU230A_CNVDT",
			"75th_SU278_SKEETIR",
			"75th_Ranger_sideURGI_2_LASER",
			"75th_Ranger_sideURGI_3_LASER",
			"75th_Ranger_SOCOM1",
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
			"rhsusf_acc_su230_mrds",
			"rhsusf_acc_su230_mrds_c",
			"rhsusf_acc_ACOG_RMR",
			"rhsusf_acc_ACOG_d",
			"rhsusf_acc_eotech_xps3",
			"acc_flashlight_pistol",
			"rhsusf_acc_anpeq15side_bk",
			"rhsusf_acc_anpeq15",
			"rhsusf_acc_anpeq15_bk",
			"rhsusf_acc_omega9k",
			"rhs_acc_dtk3",
			"rhs_acc_tgpa",
			"rhsusf_acc_nt4_black",
			"rhsusf_acc_nt4_tan",
			"rhsusf_acc_SFMB556",
			"rhs_acc_dtk1l",
			"rhs_acc_pbs1",
			"rhsusf_acc_grip2",
			"rhsusf_acc_grip2_tan",
			"rhsusf_acc_grip1",
			"rhsusf_acc_kac_grip",
			"rhsusf_acc_rvg_blk",
			"rhsusf_acc_tacsac_blk",
			"rhsusf_acc_tdstubby_blk",
			"rhsusf_acc_grip3",
			"bipod_01_F_blk",
			"bipod_01_F_snd"
		
    	];

    	Private _CO = [
			// Primary
			"75th_Ranger_URGI_5",
			"75th_Ranger_FSP_2",
			"75th_Ranger_URGI_4",
			"75th_Ranger_FSP_1",
			"rhs_weap_m16a4",
			"rhs_weap_m16a4_imod_M203",
			"rhs_weap_m4_m203",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC",
			"rhs_weap_m4a1_m320",
			"rhs_weap_m32",
			"rhs_weap_M590_8RD",
			
			// Launcher
			"rhs_weap_M136",
			"rhs_weap_M136_hedp",
			"rhs_weap_M136_hp",
			"rhs_weap_fgm148",
			"rhs_weap_fim92",
			"avm224_W_M224_mortar_carry",
			"rhs_weap_maaws"
     	];

     	Private _RIFLEMAN = [
			// Primary
			"75th_Ranger_FSP_1",
			"75th_Ranger_URGI_5",
			"75th_Ranger_FSP_2",
			"75th_Ranger_URGI_4",
			"rhs_weap_m16a4",
			"rhs_weap_m16a4_imod_M203",
			"rhs_weap_m4_m203",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC",
			"rhs_weap_m4a1_m320",
			"rhs_weap_m32",
			"rhs_weap_M590_8RD",
			
			// Launcher
			"rhs_weap_M136",
			"rhs_weap_M136_hedp",
			"rhs_weap_M136_hp",
			"rhs_weap_fgm148",
			"rhs_weap_fim92",
			"avm224_W_M224_mortar_carry",
			"rhs_weap_maaws"
     	];

      	Private _MEDIC = [
			// Primary
			"75th_Ranger_URGI_5",
			"75th_Ranger_FSP_1",
			"75th_Ranger_FSP_2",
			"75th_Ranger_URGI_4",
			"rhs_weap_m16a4",
			"rhs_weap_m16a4_imod_M203",
			"rhs_weap_m4_m203",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC",
			"rhs_weap_m4a1_m320",
			"rhs_weap_m32",
			"rhs_weap_M590_8RD"
      	];

      	Private _AUTORIFLEMAN = [
			// Primary
			"75th_Ranger_m240L",
			"75th_ranger_mk48"

      	];

      	Private _ENGINEER = [
			// Primary
			"75th_Ranger_URGI_5",
			"75th_Ranger_FSP_1",
			"75th_Ranger_FSP_2",
			"75th_Ranger_URGI_4",
			"rhs_weap_m16a4",
			"rhs_weap_m16a4_imod_M203",
			"rhs_weap_m4_m203",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC",
			"rhs_weap_m4a1_m320",
			"rhs_weap_m32",
			"rhs_weap_M590_8RD",
			// Launcher
			"rhs_weap_M136",
			"rhs_weap_M136_hedp",
			"rhs_weap_M136_hp",
			"rhs_weap_fgm148",
			"rhs_weap_fim92",
			"avm224_W_M224_mortar_carry",
			"rhs_weap_maaws"
      	];

      	Private _PILOT = [
			// Primary
			"75th_Ranger_URGI_5",
			"75th_Ranger_FSP_1",
			"75th_Ranger_FSP_2",
			"75th_Ranger_URGI_4",
			"rhs_weap_m16a4",
			"rhs_weap_m16a4_imod_M203",
			"rhs_weap_m4_m203",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC",
			"rhs_weap_m4a1_m320",
			"rhs_weap_m32",
			"rhs_weap_M590_8RD"
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