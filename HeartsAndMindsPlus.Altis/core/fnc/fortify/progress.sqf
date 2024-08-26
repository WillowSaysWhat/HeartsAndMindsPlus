
/* ----------------------------------------------------------------------------
Function: tet_fortify_eco

Description:
    Adds money to the economy

Usage:
    spawn tet_fortify_open

Returns:

Examples:
    (begin example)
        _result = [] call tet_fortify_progress;
 
    (end)

Author:
    Tetlys
---------------------------------------------------------------------------- */ 


params [];

// Unlock System
city_remaining = [];  
// Check if cities are occupied and count them
{  
if (_y getVariable ["occupied", false]) then {  
    city_remaining pushBack _y;  
};  
} forEach btc_city_all; 

// Turns it into a %
VictoryPercentage = 100 - (((count city_remaining) / (count btc_city_all)) *100);

publicVariable "VictoryPercentage";
