private [ "_vehmarkers", "_markedveh", "_cfg", "_vehtomark", "_marker" ];

_vehmarkers = [];
_markedveh = []; 
_markedveh1 = [];
_cfg = configFile >> "cfgVehicles";
_vehtomark = [];

_vehtomark = [
// EDEN - CONFIG - VEHICLES TO BE MARKED
"RHSGREF_A29B_HIDF", 
"UK3CB_B_Bell412_Armed_dynamicLoadout_HIDF", 
"UK3CB_B_C47_Cargo_HIDF", 
"UK3CB_B_LAV25_HIDF", 
"UK3CB_B_LAV25_HQ_HIDF", 
"rhsgref_hidf_m1025_m2", 
"UK3CB_B_M151_Jeep_HMG_HIDF", 
"UK3CB_B_M151_Jeep_Open_HIDF", 
"UK3CB_B_M151_Jeep_TOW_HIDF", 
"UK3CB_B_M60A3_HIDF", 
"UK3CB_B_M939_Reammo_HIDF", 
"UK3CB_B_M939_Recovery_HIDF", 
"UK3CB_B_M939_Refuel_HIDF", 
"UK3CB_B_M939_Repair_HIDF", 
"rhsgref_hidf_M998_2dr_halftop", 
"rhs_uh1h_hidf"
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