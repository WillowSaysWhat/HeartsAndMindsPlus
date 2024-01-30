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

if (_UnitRole == "Commander") then {
[player, BIS_requesterMod, BIS_providerMod] call BIS_fnc_addSupportLink;
};

private _uid = getplayeruid player; 
private _NAME = name player;
private _OUTPUT = [_name, "False:False:False:0:0"] joinstring ":";
BTC_Player_array getOrDefault [_UID, _OUTPUT, true];