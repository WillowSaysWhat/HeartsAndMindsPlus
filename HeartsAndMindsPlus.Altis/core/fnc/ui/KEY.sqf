/* ----------------------------------------------------------------------------
Function: tet_ui_KEY

Description:
    Returns a users KEY from the database Using a UID

Parameters:


Returns:

_KEY - Key assgined to user in the database

Examples:
    (begin example)
        _result = [_UID] call tet_ui_KEY
    (end)

Author:
    Tetlys

---------------------------------------------------------------------------- */

  params ["_UID"];

_ALLKEYS = keys BTC_UID_array;    
_KEYCOUNT = count _ALLKEYS;    
  
if (_KEYCOUNT == 0) exitwith {    
    BTC_UID_array set [0, _UID];    
    publicvariable "BTC_UID_array";   
};      
{    
    _COLLECTED = BTC_UID_array get _x;      
    if (_COLLECTED == _UID) exitwith {_x}; 
    _KEYCOUNT +1   
} foreach _ALLKEYS;     


 








