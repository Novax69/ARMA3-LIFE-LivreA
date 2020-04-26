/*
	file : fn_updateLivreA.sqf
	author : Novax
	date : 26/04/2020

	Description : Update the DB and add the cash to a DB

*/

private["_query","_queryResult","_value","_playerUID","_mode","_livretmp"];

_mode = _this select 0;
_playerUID = _this select 1;
_value = _this select 2;

_query = format["SELECT livrea FROM players WHERE pid='%1'",_playerUID]
if(_query isEqualTo "") exitWith {};
_queryResult = [_query,2] call DB_fnc_asyncCall;
_livretmp = _queryResult select 0;


switch(_mode) do {
	case 0: {
		_livretmp = _livretmp - _value;

	};
	case 1: {
		_livretmp = _livretmp + _value;
	};
};


_query = format["UPDATE players SET livreA = '%1' WHERE pid='%2'",_livretmp,_playerUID];

if(_query isEqualTo "") exitWith {};

[_query,1] call DB_fnc_asyncCall;