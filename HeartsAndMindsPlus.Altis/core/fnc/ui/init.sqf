
/* ----------------------------------------------------------------------------
Function: tet_ui_init

Description:
    Initiates the UI database

Parameters:


Returns:

Examples:
    (begin example)
        _result = [] call tet_ui_init
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

params ["_player"];

//SUPPORT CODE

Private _UnitRole = roleDescription _player;

private _uid = getplayeruid _player; 
private _NAME = name _player;
private _OUTPUT = [_name, "0:0:0:0:0"] joinstring ":";
private _PLAYERD = BTC_Player_array getOrDefault [_UID, _OUTPUT, true];

_index = _PLAYERD splitstring ":";

_NAME = _index select 0;
_BUILDPERM = _index select 1;
_SALVAGEPERM = _index select 2;
_COMMANDPERM = _index select 3;

player setVariable ["interpreter",true];

if (parseNumber _BUILDPERM == 1) then {_player setVariable ["allow_build",true];};
if (parseNumber _SALVAGEPERM == 1) then {_player setVariable ["allow_salvage",true];};
if (parseNumber _COMMANDPERM == 1) then {_player setVariable ["side_mission",true]; _player setVariable ["APW_initAddaction",true]; [_player,"initPlayer"] call APW_fnc_APWMain;};
publicVariable "btc_player_array";