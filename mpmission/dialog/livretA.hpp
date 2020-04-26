class Life_livretA_management {
    idd = 690001;
    name= "life_livretA_menu";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = 690011;
            x = 0.35;
            y = 0.2;
            w = 0.3;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0.35;
            y = 0.2 + (11 / 250);
            w = 0.3;
            h = 0.722 - (22 / 250);
        };
    };

    class controls {
        class Title: Life_RscTitle {
            colorBackground[] = {0, 0, 0, 0};
            idc = -1;
            text = "Gestion du Livret A"; // Eng : Managing Livret A
            x = 0.35;
            y = 0.2;
            w = 0.6;
            h = (1 / 25);
        };
        class CashTitleLivreA: Life_RscStructuredText { //The ammount of cash
            idc = 690012;
            text = "";
            x = 0.39;
            y = 0.26;
            w = 0.3;
            h = .14;
        };
        class livreADeposit : Life_RscButtonMenu {
            idc = 690013;
            text = "Déposer: Livret A";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call life_fnc_depositLivreA";
            x = 0.425;
            y = 0.46;
            w = (6 / 40);
            h = (1 / 25);  
        };
        class livreAWithdraw : Life_RscButtonMenu {
            idc = 690014;
            text = "Retirer: Livret A";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call life_fnc_withdrawLivreA";
            x = 0.425;
            y = 0.46;
            w = (6 / 40);
            h = (1 / 25);
        };

        class moneyEdit: Life_RscEdit {
            idc = 690015;
            text = "1";
            sizeEx = 0.030;
            x = 0.4;
            y = 0.41;
            w = 0.2;
            h = 0.03;
        };
        class CloseButtonKey: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.35;
            y = 0.882;
            w = (6.25 / 40);
            h = (1 / 25);
        };


    };
};