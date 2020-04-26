// Line 27 to 34 replace the switch by :

private[..., "_livreAStat"]


_query = switch (_side) do {
    // West - 11 entries returned
    case west: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, cop_licenses, coplevel, cop_gear, blacklist, cop_stats, playtime, livrea FROM players WHERE pid='%1'",_uid];};
    // Civilian - 12 entries returned
    case civilian: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, civ_licenses, arrested, civ_gear, civ_stats, civ_alive, civ_position, playtime, livrea FROM players WHERE pid='%1'",_uid];};
    // Independent - 10 entries returned
    case independent: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, med_licenses, mediclevel, med_gear, med_stats, playtime, livrea FROM players WHERE pid='%1'",_uid];};

    //if you have OPFOR disable the comment below :
    // case east: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, adac_licenses, adaclevel, adac_gear, adac_stats, playtime, livrea FROM players WHERE pid='%1'",_uid];};

};


// line ~ 78 the switch add :

case west : { 
        _livreAStat = _queryResult select 12; 
        _queryResult set[12,([_livreAStat] call DB_fnc_numberSafe)];    // add those lines at the beginning of the case
};

case civilian : {

        _livreAStat = _queryResult select 13; 
        _queryResult set[13,([_livreAStat] call DB_fnc_numberSafe)]; // add those lines before _houseData
};

case independent : {
        _livreAStat = _queryResult select 11; 
        _queryResult set[11,([_livreAStat] call DB_fnc_numberSafe)];      // add those lines at the beginning of the case
};

// If you have OPFOR enabled :

case east : {
        _livreAStat = _queryResult select 11; 
        _queryResult set[11,([_livreAStat] call DB_fnc_numberSafe)]; // add those lines at the beginning of the case
};