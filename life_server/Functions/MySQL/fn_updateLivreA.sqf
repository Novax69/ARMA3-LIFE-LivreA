/*
	file : fn_updateLivreA.sqf
	author : Novax
	date : 26/04/2020

	Description : Update the DB and add the cash to a DB

*/

private["_query","_queryResult","_value","_playerUID"];


_playerUID = _this select 0;
_value = _this select 1;

_query = format["UPDATE players SET livreA = '%1' WHERE pid='%2'",_value,_playerUID];

if(_query isEqualTo "") exitWith {};

[_query,1] call DB_fnc_asyncCall;