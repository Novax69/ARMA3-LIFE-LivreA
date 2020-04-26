// Search for : Parse side specific information.
// Replace the entire switch by this 

switch (playerSide) do {
    case west: {
        CONST(life_coplevel, parseNumber(_this select 7));
        CONST(life_medicLevel,0);
        life_blacklisted = _this select 9;
        if (LIFE_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            life_hunger = ((_this select 10) select 0);
            life_thirst = ((_this select 10) select 1);
            player setDamage ((_this select 10) select 2);

        };
        LIVREA = parseNumber (_this select 12);
    };

    case civilian: {
        life_is_arrested = _this select 7;
        CONST(life_coplevel, 0);
        CONST(life_medicLevel, 0);
        life_houses = _this select 14;
        if (LIFE_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            life_hunger = ((_this select 9) select 0);
            life_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };
        
        LIVREA = parseNumber (_this select 13);

        //Position
        if (LIFE_SETTINGS(getNumber,"save_civilian_position") isEqualTo 1) then {
            life_is_alive = _this select 10;
            life_civ_position = _this select 11;
            if (life_is_alive) then {
                if (count life_civ_position != 3) then {diag_log format["[requestReceived] Bad position received. Data: %1",life_civ_position];life_is_alive =false;};
                if (life_civ_position distance (getMarkerPos "respawn_civilian") < 300) then {life_is_alive = false;};
            };
        };

        {
            _house = nearestObject [(call compile format["%1",(_x select 0)]), "House"];
            life_vehicles pushBack _house;
        } forEach life_houses;

        life_gangData = _this select 15;
        if (!(count life_gangData isEqualTo 0)) then {
            [] spawn life_fnc_initGang;
        };
        [] spawn life_fnc_initHouses;
    };

    case independent: {
        CONST(life_medicLevel, parseNumber(_this select 7));
        CONST(life_coplevel,0);
        if (LIFE_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            life_hunger = ((_this select 9) select 0);
            life_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };
        LIVREA =  parseNumber (_this select 11);
    };
};