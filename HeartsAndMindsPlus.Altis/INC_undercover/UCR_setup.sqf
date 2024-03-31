/*

Setup options for INC_undercover undercover / civilian recruitment script by Incontinentia.

Please check each setting carefully otherwise the script may not function properly in your scenario. All classnames must have quotation marks ("Item_Random_F")

*/

//-------------------------Player settings-------------------------

_undercoverUnitSide = west;             //What side is/are the undercover unit(s) on? (Can be east, west or independent - only one side supported)

//-------------------------General Settings-------------------------

_debug = false;                         //Set to true for debug
_fullAIfunctionality = false;            //Enable all checks on AI (may degrade performace very slightly for large groups, 15+)
_easyMode = true;                       //Disguise checks will also reveal if the player's disguise is working or not

_racism = false;                         //Enemies will notice if you aren't the race of the faction you're pretending to be (making you easier to detect if nothing is covering your face)
_racProfFacCiv = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural civilian population
_racProfFacEny = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural enemy forces

_regEnySide = east;                     //Units of this side will be classed as regular enemies and will share information about detected units across entire map (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_regBarbaric = false;                   //(Bool - true or false) Will this side lash out on civilians if it takes casualties and doesn't know the attacker?
_regDetectRadius = 10;                  //Default detection radius for regular troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_asymEnySide = sideEmpty;               //Units of this side will be classed as asymetric enemies (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_asymBarbaric = false;                   //(Bool - true or false) Will this side have a small chance of lashing out on civilians if it takes casualties and doesn't know the attacker?
_asymDetectRadius = 15;                 //Default detection radius for asym troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_globalSuspicionModifier = 1;           //Scales the level of suspicion of enemies. 1 is default, 2 means units are twice as likely to see through undercover unit's disguises, 0.5 means half as likely etc.

//-------------------------Civilian Disguise settings-------------------------


_civFactions = ["CIV_F","DEFAULT"]; //Array of factions whose vests are safe for undercover units to wear

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianVests = [];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianUniforms = [];

//(Array of classnames) Safe headgear (will automatically include civilian headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianHeadgear = [];

//(Array of classnames) Safe backpacks (will automatically include civilian backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianBackpacks = [];

//(Array of classnames) Safe vehicles to drive in (automatically includes vehicles from the civilian factions above).
_civilianVehicleArray = [];

_HMDallowed = false; //(Bool - true or false) Are HMDs (night vision goggles etc.) safe to wear for units pretending to be civilians? Set to false if wearing HMDs will cause suspicion (must be stored in backpack).

_noOffRoad = false; //Civilian vehicles driving at speed more than 50 meters from the nearest road will immediately be considered hostile (even if false, this will be seen as suspicious)


//-------------------------Enemy Disguise settings-------------------------

// copyToClipboard str ([] call btc_fnc_get_classeast);
_incogFactions = ["OPF_F","OPF_G_F","OPF_R_F","OPF_T_F","OPF_GEN_F","RHS_FACTION_VMF","RHS_FACTION_MSV","RHS_FACTION_RVA","RHS_FACTION_TV","RHS_FACTION_VDV","RHS_FACTION_VPVO","RHS_FACTION_VV","RHS_FACTION_VVS_C","RHS_FACTION_VVS","RHSSAF_FACTION_ARMY_OPFOR","RHSSAF_FACTION_AIRFORCE_OPFOR","RHSGREF_FACTION_TLA","UK3CB_AAF_O","UK3CB_ADA_O","UK3CB_ADR_O","UK3CB_ADG_O","UK3CB_ADC_O","UK3CB_ADE_O","UK3CB_ADM_O","UK3CB_ADP_O","UK3CB_APD_O","UK3CB_ARD_O","UK3CB_CHD_O","UK3CB_CHD_W_O","UK3CB_CHC_O","UK3CB_CCM_O","UK3CB_CPD_O","UK3CB_CW_SOV_O_EARLY","UK3CB_CW_SOV_O_LATE","UK3CB_CSAT_A_O","UK3CB_CSAT_W_O","UK3CB_CSAT_M_O","UK3CB_CSAT_B_O","UK3CB_CSAT_N_O","UK3CB_CSAT_F_O","UK3CB_CSAT_G_O","UK3CB_CSAT_U_O","UK3CB_CSAT_S_O","UK3CB_FIA_O","UK3CB_GAF_O","UK3CB_ION_O_DESERT","UK3CB_ION_O_URBAN","UK3CB_ION_O_WINTER","UK3CB_ION_O_WOODLAND","UK3CB_KRG_O","UK3CB_KDF_O","UK3CB_LDF_O","UK3CB_LFR_O","UK3CB_LSM_O","UK3CB_LNM_O","UK3CB_MDF_O","UK3CB_MEC_O","UK3CB_MEE_O","UK3CB_MEI_O","UK3CB_NAP_O","UK3CB_NFA_O","UK3CB_NPD_O","UK3CB_TKC_O","UK3CB_TKM_O","UK3CB_TKA_O","UK3CB_TKP_O","RHSGREF_FACTION_CHDKZ"]; //Array of enemy factions whose items and vehicles will allow the player to impersonate the enemy

 //Names of additional markers for areas that would be considered trespassing (any with "INC_tre" - case sensitive - somewhere in the marker name will automatically be included)
_trespassMarkers = [];

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoVests = [];

//(Array of classnames) Safe headgear (will automatically include incog headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoHeadgear = [];

//(Array of classnames) Safe backpacks (will automatically include incog backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoBackpacks = [];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoUniforms = [];

_incogVehArray = []; //(Array of classnames) Additional incognito vehicles (vehicles from the faction above will automatically count, as will all _highSecVehicles)



//-------------------------High security zone settings-------------------------
/*
High security zones are areas that can only be entered with specific uniforms / items, even if the unit is disguised as an enemy.
For instance, it could be a radar installation or a marker in the vicinity of a high value target that only specially designated units are allowed near.
All high security zones are automatically considered non-civilian territory, but units dressed as enemies can enter without being instantly considered hostile, but they will attract a LOT more attention.
In these settings, you can .
*/

_highSecMarkers = []; 					//Names of additional markers for areas that are designated high security zones that require specific uniforms to enter without raising suspicion (any with "INC_highSec" - case sensitive - somewhere in the marker name will automatically be included)

_highSecInstantHostile = false;         // If true, units entering high security areas with the wrong uniform will be instantly deemed hostile by enemy forces. If false, it will be highly suspicious.

_highSecVehicles = [];                  // (Array of classnames) Vehicles that can enter high security areas without raising suspicion (uniforms will still be noticed according to how open the vehicle is)

_highSecurityUniforms = [];             // (Array of classnames) Uniforms that allow entry into high security areas (defined by high security markers)

_highSecItemCheck = true;               // Check for disallowed items that aren't in the permitted list? Each non-permitted item will incur a suspicion penality. Set to false if high security checks just include uniform only.

_highSecItems = [];                     // (Array of classnames) List of items such as vests, headgear, hats etc., that won't cause suspicion in high security areas (only works on foot for now)

_hsItChkOutside = true;                 // The high security item check will occur if wearing a high security uniform even in non-high security zones. Useful if the high security uniform is, for example, a businessman or scientist, who would look weird carrying a gun and helmet.

_hsMustBeUnarmed = true;               // Units carrying weapons will be considered hostile (requires _highSecItemCheck to be set to true).

_highSecItemCheckScalar = 1;            // Multiplies the level of suspicion caused by each suspect item when in a high security zone


//-------------------------Civilian recruitment settings-------------------------
/*
By enabling civilian recruitment, undercover can recruit any ambient civilians they see into their group (if their reputation allows / the civvy wants to join).
Civilians will operate under similar restrictions to the player.
You can also dismiss your new teammates and they will leave your group and carry on doing whatever it is they fancy doing (usually sitting cross-legged in the middle of a field).
*/

_civRecruitEnabled = false;          //(Bool - true or false) Set this to false to prevent undercover units from recruiting civilians
_armedCivPercentage = 70;           //(Number - 0 to 100) Max percentage of civilians armed with weapons from the array below, either on their person or in their backpacks (will only work if _civRecruitEnabled is set to true, otherwise this is ignored)
_civPackPercentage = 30;            //(Number - 0 to 100) Percentage of civilians with backpacks
_civVestPercentage = 10;            //(Number - 0 to 100) Percentage of civilians who will have vests added (from above list of civilian vests)
_hideAllPistols = true;             //(Bool - true or false) Hide all pistols in uniform?
_canCarryOpenly = true;             //If the weapon can't fit in the pack, should civilians carry weapons overtly instead?
_carryAllWeaponsOpenly = false;     //Carry all weapons openly (overrides the above)
_rareWeaponPercentage = 20;         //Percentage chance that a civilian will have a rare weapon
_superRareWeaponPercentage = 5;     //Percentage chance that a civilian will have a rare weapon
_maxCivMags = 10;                   //Maximum number of magazines a civilian will carry

//Weapon classnames for armed civilians (array of classnames)
_civWpnArray = ["arifle_AKS_F","arifle_AKM_F","hgun_Pistol_01_F","hgun_Rook40_F","hgun_ACPC2_F","hgun_Rook40_F"];

_rareWeaponArray = [];

_superRareWeaponArray = [];

//Items that civilians may carry
_civItemArray = ["ACE_Cellphone","ACE_Banana","ACE_Flashlight_KSF1","ACE_SpraypaintBlack","itemRadio","ACE_RangeCard","ACE_key_civ","ACE_key_lockpick","ACE_fieldDressing","IEDUrbanSmall_F","IEDUrbanSmall_F"];

//Civilian backpack classes (array of classnames)
_civPackArray = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oucamo","B_Carryall_cbr"];
