# Prevent AI Spawning on the Base

Without a safe area, AI patrols could spawn within the confines of the main FOB. This can create frustration for players who are engaged in base-building or general administration in FOB. A safe zone can be implemented to ensure that logi players are not harrassed by the appearance of enemy squads within the FOB.

To make a safe area around a FOB you will need to:

- create the main base in arma editor
- place a marker next to the base name. for example : YOUR_MARKER_AREA
- in [core/func/city/init,sqf Line 65-68](/HeartsAndMindsPlus.Altis/core/fnc/city/init.sqf) uncomment (remove `/*` amd `*/`)

```c
    
    /*
     //if you want a safe area
     if (_position distance getMarkerPos "YOUR_MARKER_AREA" < 500) exitWith {};
    */
```

NOTE: This marker will need to engulf the centre of the towns surrounding your base to ensure their spawn points are disabled.

![107410_20170403172205_1](https://cloud.githubusercontent.com/assets/14364400/24616751/5158449c-1892-11e7-901c-47747c9c349d.png)
