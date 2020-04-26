//Add 
        class livreADeposit : Life_RscButtonMenu {
            idc = 2707;
            text = "Déposer: Livret A";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call life_fnc_depositLivreA";
            x = 0.365; // tweak the coords I didn't do it, it's on the Gang one
            y = 0.822; // tweak the coords I didn't do it, it's on the Gang one 
            w = 0.275; // tweak the coords I didn't do it, it's on the Gang one       
        };
        class livreAWithdraw : Life_RscButtonMenu {
            idc = 2708;
            text = "Retirer: Livret A";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call life_fnc_withdrawLivreA";
            x = 0.365; // tweak the coords I didn't do it, it's on the Gang one
            y = 0.77; // tweak the coords I didn't do it, it's on the Gang one
            w = 0.275; // tweak the coords I didn't do it, it's on the Gang one
        };
// Add End
