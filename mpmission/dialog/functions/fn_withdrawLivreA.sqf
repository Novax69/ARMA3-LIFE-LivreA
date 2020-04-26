#include "..\..\script_macros.hpp"
/*
    File: fn_withdrawLivreA.sqf
    Author: Novax 
    Date : 26/04/2020

    Description:
    Retire l'argent dans le livret A
    withdraw the A book :D
*/

private ["_value","_playerUID","_mode"];
_value = parseNumber(ctrlText 2702);
_playerUID = getPlayerUID player;


[_playerUID,_value] remoteExecCall ["DB_fnc_updateLivreA", RSERV]

if (_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if (_value < 0) exitWith {};
if (!([str(_value)] call TON_fnc_isnumber)) exitWith {hint localize "STR_ATM_notnumeric"};
if (_value > LIVREA) exitWith {hint "Pas assez d'argent dans le livre A"};

CASH = CASH + _value

_mode = 1;

[_mode,_playerUID,_value] remoteExecCall ["DB_fnc_updateLivreA",RSERV];



hint format["Tu as bien retiré %1 € de ton livret A",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync