// Here is the code to add inside your NPC / Object to access the menu 

this enableSimulation false; 
this allowDamage false; 

// FRENCH :
this addAction["<t color='#ADFF2F'>Votre Livret A</t>",life_fnc_livretAMenu,"",0,FALSE,FALSE,"",' isNull objectParent player && player distance _target < 4 '];

// ENGLISH :
this addAction["<t color='#ADFF2F'>Your Livret A</t>",life_fnc_livretAMenu,"",0,FALSE,FALSE,"",' isNull objectParent player && player distance _target < 4 '];
