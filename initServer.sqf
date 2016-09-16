//call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
enablesaving [false, false];
enableSentences false;

if (paramsArray select 1 == 1) then setTimeMultiplier 1;
if (paramsArray select 1 == 2) then setTimeMultiplier 2;
if (paramsArray select 1 == 3) then setTimeMultiplier 4;
if (paramsArray select 1 == 4) then setTimeMultiplier 6;

//_bleh3 = [] execVM "scripts\getincars.sqf";

switch (side player) do {

  case EAST: {

    ta01 = player createSimpleTask ["Kill all of the reporters!"];
    ta01 setSimpleTaskDescription ["There are 10 total on the island in marked cities.","Kill all of the reporters!","Kill all of the reporters!"];
    ta02 = player createSimpleTask ["Kill all of the cops!"];
    ta02 setSimpleTaskDescription ["Easier said than done, but you will win if this is completed first.","Kill all of the cops!","Kill all of the cops!"];
    player setCurrentTask ta01;

  };

  case WEST: {

    ta03 = player createSimpleTask ["Kill all of the assassins!"];
    ta03 setSimpleTaskDescription ["There are up to 4 roaming the island looking for reporters.","Kill all of the assassins!","Kill all of the assassins!"];
    ta04 = player createSimpleTask ["Do not kill civilians!"];
    ta04 setSimpleTaskDescription ["The governor will have our head if more than one is killed!","Do not kill civilians!","Do not kill civilians!"];
    player setCurrentTask ta03;

  };

};

badcar1 setPos (getPos assault vectorAdd [10,10,0.5]);
badcar3 setPos (getPos saboteur vectorAdd [10,10,0.5]);
badcar2 setPos (getPos sniper vectorAdd [10,10,0.5]);
badcar4 setPos (getPos silentops vectorAdd [10,10,0.5]);

assault moveindriver badcar1;
sniper moveindriver badcar2;
saboteur moveindriver badcar3;
silentops moveindriver badcar4;

_nul = [] execVM "scripts\civilians.sqf";
