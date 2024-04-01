params ["_vehicle"];
private _vehicleClass = toLower (typeOf _vehicle);

// Cargo is always allowed
private _isCargo = (_vehicle getCargoIndex player) != -1;
if (_isCargo || _vehicle isKindOf "ParachuteBase") exitWith {};

if (_vehicle isKindOf "air") then {
	if !(player getvariable ["allow_flight",false]) then {moveOut player};
};

if (_vehicle isKindOf "tank") then {
	if !(player getvariable ["allow_armour",false]) then {moveOut player};
};
