private [ "_vehmarkers", "_markedveh", "_cfg", "_vehtomark", "_marker" ];

_vehmarkers = [];
_markedveh = []; 
_markedveh1 = [];
_cfg = configFile >> "cfgVehicles";
_vehtomark = [];

_vehtomark = [
//CONFIG - VEHICLES TO BE MARKED
            "rhsgref_hidf_m113a3_mk19",
            "UK3CB_B_AAV_HIDF",
            "UK3CB_B_LAV25_HIDF",
            "rhsgref_hidf_m113a3_m2",
            "rhsgref_hidf_rhib",
            "rhsgref_hidf_m1025_m2",
            "UK3CB_B_M151_Jeep_Closed_HIDF",
            "UK3CB_B_M151_Jeep_HMG_HIDF",
            "UK3CB_B_M151_Jeep_Open_HIDF",
            "UK3CB_B_M151_Jeep_TOW_HIDF",
            "rhsgref_hidf_M998_2dr_fulltop",
            "rhsgref_hidf_M998_2dr_halftop",
            "rhsgref_hidf_M998_4dr_fulltop",
            "rhsgref_hidf_M998_4dr_halftop",
            "UK3CB_B_M60A3_HIDF",
            "UK3CB_B_M939_Closed_HIDF",
            "UK3CB_B_M939_Guntruck_HIDF",
            "UK3CB_B_M939_Open_HIDF",
            "UK3CB_B_M939_Reammo_HIDF",
            "UK3CB_B_M939_Recovery_HIDF",
            "UK3CB_B_M939_Refuel_HIDF",
            "UK3CB_B_M939_Repair_HIDF",
            "UK3CB_B_M1030_HIDF",
            "rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
            "rhsusf_M1084A1R_SOV_M2_D_fmtv_socom",
            "UK3CB_B_Bell412_Armed_dynamicLoadout_HIDF",
            "rhs_uh1h_hidf_gunship",
            "RHSGREF_A29B_HIDF",
            "RHS_C130J_Cargo",
            "UK3CB_B_C47_Late_HIDF",
            "UK3CB_B_C47_Cargo_Late_HIDF",
            "UK3CB_B_Cessna_T41_HIDF",
            "UK3CB_B_Mystere_HIDF"
];


// Misc variables
markers_reset = [99999,99999,0];

while { true } do {

    _markedveh = [];
    {
        if (alive _x && (typeof _x) in _vehtomark && (_x distance2d btc_gear_object) > 250 && (count (crew _x)) == 0) then {
            _markedveh pushback _x;
        };
    } foreach vehicles;

    if ( count _markedveh != count _vehmarkers ) then {
        { deleteMarkerLocal _x; } foreach _vehmarkers;
        _vehmarkers = [];

        {
            _marker = createMarkerLocal [ format [ "markedveh%1" ,_x], markers_reset ];
            _marker setMarkerColorLocal "ColorKhaki";
            _marker setMarkerTypeLocal "mil_dot";
            _marker setMarkerSizeLocal [ 0.75, 0.75 ];
            _vehmarkers pushback _marker;

        } foreach _markedveh;
    };

    {
        _marker = _vehmarkers select (_markedveh find _x);
        _marker setMarkerPosLocal getpos _x;
        _marker setMarkerTextLocal  (getText (_cfg >> typeOf _x >> "displayName"));

    } foreach _markedveh;

    sleep 15;
};