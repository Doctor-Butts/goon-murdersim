//call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
enablesaving [false, false];
enableSentences false;
#include "briefing.hpp"

if (paramsArray select 1 == 1) then setTimeMultiplier 1;
if (paramsArray select 1 == 2) then setTimeMultiplier 2;
if (paramsArray select 1 == 3) then setTimeMultiplier 4;
if (paramsArray select 1 == 4) then setTimeMultiplier 6;

/* {
    if(side _x == east) then
    {
		_x execVM "loadoutEAST.sqf";
    };
} foreach (allUnits);

{
    if(side _x == west) then
    {
		_x execVM "loadoutWEST.sqf";
    };
} foreach (allUnits);

{
    if(side _x == resistance) then
    {
		_x execVM "loadoutIND.sqf";
    };
} foreach (allUnits);

_nul = [] execVM "loadoutEMPTY.sqf";
//_bleh3 = [] execVM "getincars.sqf"; */

if (local player) then { 
   player enableFatigue false; 
   player addEventhandler ["Respawn", {player enableFatigue false}]; 
}; 

/* badcar1 setPos (getPos assault vectorAdd [5,5,0.2]);
badcar3 setPos (getPos saboteur vectorAdd [5,5,0.2]);
badcar2 setPos (getPos sniper vectorAdd [5,5,0.2]);
badcar4 setPos (getPos silentops vectorAdd [5,5,0.2]);

assault moveindriver badcar1;
sniper moveindriver badcar2;
saboteur moveindriver badcar3;
silentops moveindriver badcar4; */

_nul = [] execVM "scripts\civilians.sqf";


//client inits wait for serverInit to be true before starting, to make sure all variables the server sets up are set up before clients try to refer to them (which would cause errors)
serverInit = true;
publicVariable "serverInit";