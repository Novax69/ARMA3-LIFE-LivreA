// Line 27 to 34 replace the switch by :

_query = switch (_side) do {
    // West - 11 entries returned
    case west: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, cop_licenses, coplevel, cop_gear, blacklist, cop_stats, playtime, livrea FROM players WHERE pid='%1'",_uid];};
    // Civilian - 12 entries returned
    case civilian: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, civ_licenses, arrested, civ_gear, civ_stats, civ_alive, civ_position, playtime, livrea FROM players WHERE pid='%1'",_uid];};
    // Independent - 10 entries returned
    case independent: {format ["SELECT pid, name, cash, bankacc, adminlevel, donorlevel, med_licenses, mediclevel, med_gear, med_stats, playtime, livrea FROM players WHERE pid='%1'",_uid];};
};