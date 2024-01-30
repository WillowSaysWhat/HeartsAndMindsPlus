[player] remoteExec ["requestResupplyFlags", 2];

{
    private _box = _x;
    if (!isNull _box) then 
    {
        [_box, player] call roleArsenal;
    };
} forEach ARSENAL_CRATES;

//SUPPORT CODE

Private _UnitRole = roleDescription player;

private _uid = getplayeruid player; 
private _NAME = name player;
private _OUTPUT = [_name, "False:False:False:0:0"] joinstring ":";
private _PLAYER = BTC_Player_array getOrDefault [_UID, _OUTPUT, true];

_index = _PLAYER splitstring ":";

_NAME = _index select 0;
_BUILDPERM = _index select 1;
_SALVAGEPERM = _index select 2;
_COMMANDPERM = _index select 3;

player setVariable ["interpreter",true];

if (_BUILDPERM == "true") then {player setVariable ["allow_build",true];};
if (_SALVAGEPERM == "true") then {player setVariable ["allow_salvage",true];};
if (_COMMANDPERM == "true") then {player setVariable ["side_mission",true]; player setVariable ["APW_initAddaction",true]; [player,"initPlayer"] call APW_fnc_APWMain;};