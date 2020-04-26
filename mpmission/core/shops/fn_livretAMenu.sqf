#include "..\..\script_macros.hpp"
/*
	File : fn_livretAMenu.sqf
	Author : Novax
	github : https://github.com/Novax69 <== Find my other scripts for arma here
	Date : 26/04/2020

	Description : 
		Create a menu similar to ATM but displaying only the livret A shit

*/


if (!life_use_atm) exitWith {
    hint format [localize "STR_Shop_ATMRobbed",(LIFE_SETTINGS(getNumber,"noatm_timer"))];
};

if (!dialog) then {
    if (!(createDialog "Life_livretA_management")) exitWith {};
};

disableSerialization;

CONTROL(690001,690012) ctrlSetStructuredText parseText format ["<img size='1.7' image='icons\ico_bank.paa'/> $%1",[LIVREA] call life_fnc_numberText];
