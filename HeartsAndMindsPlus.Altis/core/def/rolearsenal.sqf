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
        //SECONDARY
		"rhsusf_weap_glock17g4",
		"rhsusf_weap_m1911a1",
		"rhsusf_weap_m9",
		"UK3CB_BHP",
		"hgun_esd_01_F", 
		"ACE_VMH3",
        //HELM
		"rhsusf_ach_bare_semi",
		"rhsusf_ach_bare_des",
		"rhsusf_ach_bare",
		"rhsusf_ach_bare_des_ess",
		"rhsusf_ach_bare_des_headset",
		"rhsusf_ach_bare_des_headset_ess",
		"rhsusf_ach_bare_ess",
		"rhsusf_ach_bare_headset",
		"rhsusf_ach_bare_headset_ess",
		"rhsusf_ach_bare_tan",
		"rhsusf_ach_bare_tan_ess",
		"rhsusf_ach_bare_tan_headset",
		"rhsusf_ach_bare_tan_headset_ess",
		"rhsusf_ach_bare_wood",
		"rhsusf_ach_bare_wood_ess",
		"rhsusf_ach_bare_wood_headset",
		"rhsusf_ach_bare_wood_headset_ess",
		"rhsusf_ach_helmet_DCU",
		"rhsusf_ach_helmet_M81",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_ach_helmet_ESS_ocp",
		"rhsusf_ach_helmet_headset_ocp",
		"rhsusf_ach_helmet_headset_ess_ocp",
		"rhsusf_ach_helmet_ucp",
		"rhsusf_ach_helmet_ESS_ucp",
		"rhsusf_ach_helmet_headset_ucp",
		"rhsusf_ach_helmet_headset_ess_ucp",
		"rhs_Booniehat_m81",
		"rhs_booniehat2_marpatd",
		"rhs_booniehat2_marpatwd",
		"rhs_Booniehat_ocp",
		"rhs_Booniehat_ucp",
		"rhsusf_opscore_aor1",
		"rhsusf_opscore_aor1_pelt",
		"rhsusf_opscore_aor1_pelt_nsw",
		"rhsusf_opscore_aor2",
		"rhsusf_opscore_aor2_pelt",
		"rhsusf_opscore_aor2_pelt_nsw",
		"rhsusf_opscore_bk",
		"rhsusf_opscore_bk_pelt",
		"rhsusf_opscore_fg",
		"rhsusf_opscore_fg_pelt",
		"rhsusf_opscore_fg_pelt_cam",
		"rhsusf_opscore_fg_pelt_nsw",
		"rhsusf_opscore_mc",
		"rhsusf_opscore_mc_pelt",
		"rhsusf_opscore_mc_pelt_nsw",
		"rhsusf_opscore_paint",
		"rhsusf_opscore_paint_pelt",
		"rhsusf_opscore_paint_pelt_nsw_cam",
		"rhsusf_opscore_paint_pelt_nsw",
		"rhsusf_opscore_ut",
		"rhsusf_opscore_ut_pelt",
		"rhsusf_opscore_ut_pelt_cam",
		"rhsusf_opscore_ut_pelt_nsw",
		"rhsusf_opscore_ut_pelt_nsw_cam",
		"rhsusf_mich_bare",
		"rhsusf_mich_bare_headset",
		"rhsusf_mich_bare_semi",
		"rhsusf_mich_bare_semi_headset",
		"rhsusf_mich_bare_tan",
		"rhsusf_mich_bare_tan_headset",
		"rhsusf_mich_helmet_marpatd",
		"rhsusf_mich_helmet_marpatd_headset",
		"rhsusf_mich_helmet_marpatwd",
		"rhsusf_mich_helmet_marpatwd_headset",
		"rhsusf_lwh_helmet_marpatwd",
		"rhsusf_lwh_helmet_marpatwd_headset_blk2",
		"rhsusf_lwh_helmet_marpatwd_headset_blk",
        //UNIFORM
		"rhs_uniform_acu_ocp",
		"rhs_uniform_acu_oefcp",
		"rhs_uniform_acu_ucp",
		"rhs_uniform_acu_ucp2",
		"rhs_uniform_acu_ucpd",
		"rhs_uniform_FROG01_wd",
		"rhs_uniform_FROG01_d",
		"rhs_uniform_g3_tan",
		"rhs_uniform_g3_mc",
		"rhs_uniform_g3_m81",
		"rhs_uniform_g3_aor2",
		"rhs_uniform_g3_blk",
		"rhs_uniform_g3_rgr",
		"rhs_uniform_cu_ucp",
		"rhs_uniform_cu_ocp",
		"U_B_CombatUniform_mcam",
		"U_B_CombatUniform_mcam_tshirt",
        //VEST
		"rhsusf_iotv_ocp_Grenadier",
		"rhsusf_iotv_ucp_Grenadier",
		"rhsusf_iotv_ocp_Repair",
		"rhsusf_iotv_ucp_Repair",
		"rhsusf_iotv_ocp_Rifleman",
		"rhsusf_iotv_ucp_Rifleman",
		"rhsusf_mabv_grenadier",
		"rhsusf_mabv_light",
		"rhsusf_mabv_rifleman",
		"rhsusf_plateframe_grenadier",
		"rhsusf_plateframe_light",
		"rhsusf_plateframe_marksman",
		"rhsusf_plateframe_rifleman",
		"rhsusf_spc_iar",
		"rhsusf_spc_light",
		"rhsusf_spc_marksman",
		"rhsusf_spc_rifleman",
        //BACKPACK
		"rhsusf_assault_eagleaiii_coy",
		"rhsusf_assault_eagleaiii_ocp",
		"rhsusf_assault_eagleaiii_ucp",
		"rhsusf_falconii_coy",
		"rhsusf_falconii_mc",
		"rhsusf_falconii",
		"B_Carryall_blk",
		"B_Carryall_cbr",
		"B_Carryall_khk",
		"B_Carryall_mcamo",
		"B_Carryall_oli",
		"B_Carryall_oucamo",
		"B_Kitbag_cbr",
		"B_Kitbag_rgr",
		"B_Kitbag_mcamo",
		"B_Kitbag_tan",
		"B_Bergen_mcamo_F",
		"B_Bergen_hex_F",
		//TFARbackpack
		"TFAR_anarc164",
		"TFAR_anarc210",
		"TFAR_anprc155_coyote",
		"TFAR_mr3000_multicam",
		"TFAR_rt1523g_big_rhs",
		"TFAR_rt1523g_black",
		"tfw_ilbe_a_coy",
		"tfw_ilbe_coy",
		"tfw_ilbe_blade_coy",
		"tfw_ilbe_dd_coy",
		"tfw_ilbe_a_gr",
		"tfw_ilbe_gr",
		"tfw_ilbe_blade_gr",
		"tfw_ilbe_dd_gr",
		"tfw_ilbe_a_d",
		"tfw_ilbe_d",
		"tfw_ilbe_blade_d",
		"tfw_ilbe_dd_d",
		"tfw_ilbe_a_wd",
		"tfw_ilbe_wd",
		"tfw_ilbe_blade_wd",
		"tfw_ilbe_dd_wd",
        //FACEWARE
		"G_Balaclava_blk",
		"G_Balaclava_combat",
		"G_Balaclava_oli",
		"G_Balaclava_Flecktarn",
		"G_Balaclava_Scarecrow_01",
		"G_Balaclava_Skull1",
		"G_Balaclava_Tropentarn",
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
		"rhsusf_shemagh_gogg_grn",
		"rhsusf_shemagh2_gogg_grn",
		"rhsusf_shemagh_gogg_od",
		"rhsusf_shemagh2_gogg_od",
		"rhsusf_shemagh_gogg_tan",
		"rhsusf_shemagh2_gogg_tan",
		"rhsusf_shemagh_gogg_white",
		"rhsusf_shemagh2_gogg_white",
		"rhsusf_oakley_googles_blk",
		"rhsusf_oakley_googles_clr",
		"rhsusf_oakley_googles_ylw",
		"G_Sport_Red",
		"G_Sport_Blackyellow",
		"G_Sport_BlackWhite",
		"G_Sport_Blackred",
		"G_Tactical_Clear",
        "G_Spectacles_Tinted",
		//NVGS
		"ACE_NVG_Gen4_Black",
		"ACE_NVG_Gen4",
		"ACE_NVG_Gen4_Green",
		"ACE_NVG_Wide_Black",
		"ACE_NVG_Wide",
		"ACE_NVG_Wide_Green",
        //BINOCULARS
		"Binocular",
		"Laserdesignator",
		"Rangefinder",
		"ACE_Vector",
		"ACE_MX2A",
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
		"rhsusf_acc_grip2_tan",
		"rhsusf_acc_grip1",
		"rhsusf_acc_kac_grip",
		"rhsusf_acc_rvg_blk",
		"rhsusf_acc_tacsac_blk",
		"rhsusf_acc_tdstubby_blk",
		"rhsusf_acc_grip3",
		"bipod_01_F_blk",
		"bipod_01_F_snd",
		//PRIMARYAMMO
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
		"rhsusf_100Rnd_762x51_m80a1epr",
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
		"rhs_mag_M585_white_cluster",
		"ACE_40mm_Flare_white",
		"ACE_40mm_Flare_green",
		"ACE_40mm_Flare_red",
		"ACE_40mm_Flare_ir",
		"rhs_mag_m4009",
		"rhs_mag_m576",
		"rhsusf_8Rnd_Slug",
		"rhsusf_8Rnd_00Buck",
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
		"Chemlight_blue",
		"Chemlight_green",
		"ACE_Chemlight_IR",
		"ACE_Chemlight_Orange",
		"Chemlight_red",
		"ACE_Chemlight_White",
		//EXPLOSIVES
		"rhsusf_m112_mag",
		//TOOLS
		"ACE_RangeTable_82mm",
		"ACE_artilleryTable",
		"ACE_DefusalKit",
		"ACE_EntrenchingTool",
		"ACE_Flashlight_MX991",
		"ACE_Flashlight_XL50",
		"ACE_MapTools",
		"ACE_microDAGR",
		"ACE_wirecutter",
		"ACE_M26_Clacker",
		//MEDICAL
		"kat_IV_16",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_salineIV",
		"ACE_salineIV_250",
		"ACE_salineIV_500",
		"ACE_bodyBag",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_splint",
		"ACE_tourniquet",
		//MISC
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ItemcTabHCam",
		"ACE_IR_Strobe_Item",
		"ACE_rope6",
		"ACE_rope12",
		"ACE_rope27",
		"ACE_SpraypaintRed",
		"ACE_UAVBattery",
		"ItemMap",
		"ItemCompass",
		"ACE_Altimeter",
		"B_Respawn_TentDome_F",
		"B_UAV_01_backpack_F",
		"B_UavTerminal",
		"ACE_Banana",
		"kat_Carbonate",
		"kat_Painkiller",
		"optic_SOS",
		"rhsusf_acc_aac_762sd_silencer",
		"ACE_RangeCard",
		"ACE_Clacker",
		"ACE_Kestrel4500",
		"ace_marker_flags_red",
		"Laserbatteries",
		"muzzle_antenna_01_f",
		"muzzle_antenna_02_f",
		"ACE_1Rnd_82mm_Mo_HE",
		"ACE_1Rnd_82mm_Mo_Illum",
		"ACE_1Rnd_82mm_Mo_Smoke",
		"ACE_1Rnd_82mm_Mo_HE_Guided",
		"ACE_1Rnd_82mm_Mo_HE_LaserGuided",
		"ToolKit",
		"tfw_rf3080Item",
		"ACE_SpareBarrel",
		"ACE_WaterBottle",
		"ACE_TacticalLadder_Pack",
		"ItemWatch"
    ];

    Private _CO = [
        //VEST
		"rhsusf_plateframe_teamleader",
		"rhsusf_spc_squadleader",
		"rhsusf_spc_teamleader",
		"rhsusf_iotv_ocp_Squadleader",
		"rhsusf_iotv_ucp_Squadleader",
		 //PRIMARY
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
		"rhs_weap_M590_8RD",
		"rhs_weap_mk18_d",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m16a4_imod_M203",
		"rhs_weap_mk17_LB",
		"rhs_weap_mk17_CQC",
		"rhs_weap_sr25_ec_d",
		"rhsusf_20Rnd_762x51_SR25_m62_Mag",
		"rhsusf_20Rnd_762x51_SR25_m993_Mag",
		"rhsusf_20Rnd_762x51_SR25_mk316_special_Mag",
		"rhs_weap_SCARH_USA_STD",
		//SECONDARY
		"rhs_weap_M320",
		 //LAUNCHER
		"rhs_weap_fim92",
		"rhs_weap_M136",
		"launch_MRAWS_green_F",
		"launch_NLAW_F",
		"rhs_weap_fgm148",
		"rhs_weap_m72a7",
		"rhs_weap_M136_hp",
		"rhs_weap_M136_hedp",
		//ROCKETSMISSILES
		"rhs_fim92_mag",
		"MRAWS_HE_F",
		"MRAWS_HEAT55_F",
		"MRAWS_HEAT_F",
		"rhs_fgm148_magazine_AT"
		
      ];

      Private _RIFLEMAN = [
        //PRIMARY
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
		"rhs_weap_M590_8RD",
		"rhs_weap_mk18_d",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m16a4_imod_M203",
		"rhs_weap_mk17_LB",
		"rhs_weap_mk17_CQC",
		"rhs_weap_sr25_ec_d",
		"rhsusf_20Rnd_762x51_SR25_m62_Mag",
		"rhsusf_20Rnd_762x51_SR25_m993_Mag",
		"rhsusf_20Rnd_762x51_SR25_mk316_special_Mag",
		//SECONDARY
		"rhs_weap_M320",
		//LAUNCHER
		"rhs_weap_fim92",
		"rhs_weap_M136",
		"rhs_weap_M136_hp",
		"rhs_weap_M136_hedp",
		"launch_MRAWS_green_F",
		"launch_NLAW_F",
		"rhs_weap_fgm148",
		"rhs_weap_m72a7",
		//ROCKETSMISSILES
		"rhs_fim92_mag",
		"MRAWS_HE_F",
		"MRAWS_HEAT55_F",
		"MRAWS_HEAT_F",
		"rhs_fgm148_magazine_AT"
      ];

      Private _MEDIC = [
        //MEDICAL
		"ACE_bloodIV",
		"ACE_bloodIV_250",
		"ACE_bloodIV_500",
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
		"ACE_surgicalKit",
		"kat_TXA",
		"ACE_personalAidKit",
		"kat_Armband_Doctor_Item",
		"kat_Armband_Kat_Item",
		"kat_Armband_Medic_Item",
		"kat_Armband_Red_Cross_Item",
		"kat_crossPanel",
		"kat_Bubble_Wrap_Item",
		"kat_sealant",
		"kat_aatKit",
		"kat_accuvac",
		"kat_AFAK",
		"kat_X_AED",
		"kat_amiodarone",
		"kat_atropine",
		"kat_BVM",
		"kat_CaffeineItem",
		"kat_chestSeal",
		"kat_vacuum",
		"kat_guedel",
		"kat_IFAK",
		"kat_ketamine",
		"kat_larynx",
		"kat_suction",
		"kat_MFAK",
		"kat_nalbuphine",
		"kat_naloxone",
		"kat_ncdKit",
		"kat_nitroglycerin",
		"kat_norepinephrine",
		"kat_PenthroxItem",
		"kat_PervitinItem",
		"kat_phenylephrine",
		"kat_pocketBVM",
		"kat_Pulseoximeter",
		"kat_stethoscope",
		 //PRIMARY
		"rhs_weap_hk416d10",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m27iar",
		"rhs_weap_m4a1_blockII",
		"rhs_weap_m4a1_blockII_d",
		"rhs_weap_mk18",
		"rhs_weap_M590_8RD",
		"rhs_weap_mk18_d",
		"rhs_weap_m16a4_imod",
		"rhs_weap_mk17_CQC",
		//VEST
		"rhsusf_plateframe_medic",
		"rhsusf_mabv_medic",
		"rhsusf_iotv_ocp_Medic",
		"rhsusf_iotv_ucp_Medic",
		"rhsusf_weap_MP7A2",
		"rhsusf_weap_MP7A2_desert",
		"rhsusf_mag_40Rnd_46x30_AP",
		"rhsusf_mag_40Rnd_46x30_FMJ",
		"rhsusf_mag_40Rnd_46x30_JHP",
		//LAUNCHER
		"rhs_weap_m72a7"
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
		"LMG_Mk200_F",
		//VEST
		"rhsusf_plateframe_machinegunner",
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_iotv_ucp_SAW",
		"rhsusf_mabv_mg",
		"rhsusf_spc_mg",
		//LAUNCHER
		"rhs_weap_m72a7",
		"rhs_weap_m136",
		"rhs_weap_M136_hp",
		"rhs_weap_M136_hedp"
      ];

      Private _ENGINEER = [
        //MISC ITEMS
		"ToolKit",
		"rhsusf_m112_mag",
		"rhsusf_m112x4_mag",
		"SatchelCharge_Remote_Mag",
		"ATMine_Range_Mag",
		//PRIMARY
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
		"rhs_weap_M590_8RD",
		"rhs_weap_mk18_d",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m16a4_imod_M203",
		"rhs_weap_mk17_LB",
		"rhs_weap_mk17_CQC",
		//SECONDARY
		"rhs_weap_M320",
		 //LAUNCHER
		"rhs_weap_fim92",
		"rhs_weap_M136",
		"rhs_weap_M136_hp",
		"rhs_weap_M136_hedp",
		"launch_MRAWS_green_F",
		"launch_NLAW_F",
		"rhs_weap_fgm148",
		"rhs_weap_m72a7",
		//ROCKETSMISSILES
		"rhs_fim92_mag",
		"MRAWS_HE_F",
		"MRAWS_HEAT55_F",
		"MRAWS_HEAT_F",
		"rhs_fgm148_magazine_AT"
      ];

      Private _PILOT = [
	    //PRIMARY
		"rhs_weap_hk416d10",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m27iar",
		"rhs_weap_m4a1_blockII",
		"rhs_weap_m4a1_blockII_d",
		"rhs_weap_mk18",
		"rhs_weap_mk18_d",
		"rhs_weap_m16a4_imod",
		"rhs_weap_mk17_CQC",
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
		"rhsusf_weap_MP7A2",
		"rhsusf_weap_MP7A2_desert",
		"rhsusf_mag_40Rnd_46x30_AP",
		"rhsusf_mag_40Rnd_46x30_FMJ",
		"rhsusf_mag_40Rnd_46x30_JHP",
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