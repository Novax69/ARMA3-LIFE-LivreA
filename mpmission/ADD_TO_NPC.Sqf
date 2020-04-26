// Here is the code to add inside your NPC / Object to access the menu 

this enableSimulation false; 
this allowDamage false; 
this addAction["<t color='#ADFF2F'>DAB</t>",life_fnc_livretAMenu,"",0,FALSE,FALSE,"",' isNull objectParent player && player distance _target < 4 '];