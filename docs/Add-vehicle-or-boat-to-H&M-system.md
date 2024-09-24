# Important Info: Vehicles

BLUEFOR vehicles are persistent in H&M+. Even when they are destroyed. This means that all types of drivable, flyable, and sailable can be recovered and repaired to pristine condition at the logistic point.

# Add new vehicle to H&M

Vehicles can be added or removed from H&M+ build list, and set as player spawn points. 

#### 1: By mission editing:
You can add a new vehicle in the mision.sqm :
- Open the mission in the eden editor (mission.sqm).
- Add desired vehicles.
- Drag and drop them to [EDEN layers](https://community.bistudio.com/wiki/Eden_Editor:_Layer) named "btc_vehicles".
- Save.

#### 2: In game
A garage is available for admins only. Activate the garage through mission parameters. If you are an admin, you will be allow to spawn a vehicle by interacting with the logisitc point.

### 2: Add respawn to vehicle or boat

You can add a new vehicle/boat to respawn system by:
- Drag and drop - to [EDEN layers](https://community.bistudio.com/wiki/Eden_Editor:_Layer) named "btc_veh_respawnable".

Note: you can tweak respawn time here: [/core/init_server.sqf L42](https://github.com/Vdauphin/HeartsAndMinds/blob/master/%3DBTC%3Dco%4030_Hearts_and_Minds.Altis/core/init_server.sqf#L42) by changing 30s to what you want.
