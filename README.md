<p align="center">
    <img src="https://the-eden.xyz/wp-content/uploads/2023/03/EdenLogo.png" width="210">
</p>

<p align="center">
<b>
A custom take on Hearts and Minds by Vdauphin modified by Tetlys and the Eden Development team for use on a private server - Later released due to growing list of modifications and changes.
</b>
</p>

<p align="center">
    <a href="https://github.com/Vdauphin/HeartsAndMinds/releases/tag/1.23.5">
        <img src="https://img.shields.io/badge/Version-1.23.5-blue.svg?style=flat-square" alt="H&M Version">
    </a>
    <a href="https://somsubhra.github.io/github-release-stats/?username=vdauphin&repository=HeartsAndMinds&page=1&per_page=300">
        <img src="https://img.shields.io/github/downloads/Vdauphin/HeartsAndMinds/total.svg?style=flat-square&label=Downloads" alt="H&M Downloads">
    </a>
</p>

______________________________________________

# 🤔 What is this?
### :memo: Introduction
Hearts and Minds is a cooperative Military Simulation (MilSim) mission that aims to recreate a post war environment based on an insurgency gameplay.
CSAT forces retreated from Altis and NATO deployed units and vehicles to help the local population.
A new formed group, known as "Oplitas", is against the NATO intervention and is ready to fight.

### :white_check_mark: Goal
Your main task is to defeat the "Oplitas" group and restore peace and order in Altis.
The militia has an unknown number of hideouts in the island that need to be destroyed.
They have also ammo caches in various locations, destroy them to weaken its power.

### :revolving_hearts: Actions 
Bad actions cause bad effects.
Infact there's a reputation system: helping the local population, fighting the "Oplitas", disarming IED will rise your reputation; killing civilians, mutilate alive/dead civilian, firing near civilians for no reason, remove banana, damaging/destroying buildings, breaking locked door, losing vehicles, respawns will decrease your reputation.
At the beginning you have a very low reputation level, so civilians won't help you revealing important information about Oplitas, they will likely lie instead.

# :sparkles: Features:

## :memo: EDEN specific Changes
- CAS Script
    - Based on INC AWP CAS script
    - AI air support for low population scenarios
    - Potential to add custom munitions
    - Realistic request sequence using radio triggers and action menu
- Custom Arsenal
    - Ability to whitelist and blacklist all arsenal items for each role
    - Easily allows different mission equipment for different maps/scenarios
- Modified Reputation System
    - Custom take on the existing code
    - Suitable for larger multiplayer environments
- Economy System
    - ACE fortify based system
    - Allows players to purchase heavier assets with procured points
    - Interchangeable asset list
    - Configurable scoring capacity
- Revised Rally Point System
    - Changed to be multiplayer ready for dedicated servers
- Custom map marker system
    - Added markers for objectives to suit longer sessions
    - Added empty vehicle markers to track BLUFOR assets around the map
- Medevac Support System
    - Modification of the BIS support module to be suitable for dedicated servers
    - Added due to the scenarios created using more complex medical mods/systems
    - Allows medics to call in a MEDEVAC helicopter to their location to pick up casualties
- Reworked Contamination System
    - Removed DLC dependencies to be more accessible for other playerbases
- Advanced Player Scaling
    - Added code to scale AI group numbers depending on population of the server
    - Scales from 1-4x in a linear manner, for every 5 players up to 20 connected clients

## :book: Original Features

- **Dedicated server support only**
- Dynamic battlefield
    - Enemies, civilian and animals spawn randomly
    - Random patrol and [traffic](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#traffic)
    - Dynamic caching system to save performance
    - Extend battlefield to sea (you are not safe on sea!)
- [Reputation system](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#reputation)
    - Realistic IED/Suicide/Drone bomber system
    - Civilian interaction
        - [Orders/drop leaflets](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#civil-orders)
        - Request a lift
        - Discussion ([interpreter](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#intel))
        - Fleeing
    - More than 19 [side mission](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#side-mission)
- Deep ACE3 support
    - Use mainly ACE interaction
    - Rearm system
    - ACE Fortify
- Logistic system
    - [Tow](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#towing-system)
    - [Vehicle in vehicle](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#towing-system) extended
    - [Sling loading](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#sling-loading)
    - Repair [destroyed vehicles](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#respawn)
    - [FOB/Rallypoints](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#respawn-position)
- Gameplay elements
    - [Intel](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#intel) about cache and hideout
    - [Chemical Warfare](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#chemical-warfare)
    - [Spectrum devices](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#spectrum-devices)
- Under the hood
    - A lot of optional gameplay
    - More than 370 enemies and 28 civilians factions available
    - Full saving Database ([even player markers](http://vdauphin.github.io/HeartsAndMinds/InGame-documentation#headless--database))
    - Easy map change (See [here](http://vdauphin.github.io/HeartsAndMinds/Change-MAP-of-Hearts-and-Minds))
    - ACE Headless support

# :clap: Credits:
- =BTC= clan
- Full credit to the original [Creator](https://github.com/Vdauphin)
- [Contributors](https://github.com/Vdauphin/HeartsAndMinds/graphs/contributors)

Any support or feedback is always welcome and appreciated!
