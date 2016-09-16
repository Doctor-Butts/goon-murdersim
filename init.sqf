//Runs on both server and clients after initServer.sqf is finished
waitUntil {!isNil "serverInit"};
waitUntil {serverInit};

#include "logic\activeMods.sqf"

//initialise mods if active
if ( "asr_" call caran_checkMod ) then {
	_load = [] execVM "mods\asr.sqf";
};

if ( "task_force_radio" call caran_checkMod ) then {
	_load = [] execVM "mods\tfar.sqf";
};

if ("acre_" call caran_checkMod ) then {
	_load = [] execVM "mods\acre.sqf";
};

if ( "ace_" call caran_checkMod ) then {
	_load = [] execVM "mods\ace.sqf";
};

//Player init: this will only run on players. Use it to add the briefing and any player-specific stuff like action-menu items.
if (!isServer || (isServer && !isDedicated) ) then {
	//put in briefings
	briefing = [] execVM "briefing\briefing.sqf";

	_startMarker = ["start","start_1","start_2","start_3","start_4","start_5","start_6","start_7","start_8","start_9","start_10","start_11","start_12","start_13","start_14","start_15","start_16","start_17","start_18","start_19","start_20","start_21","start_22","start_23","start_24","start_25","start_26","start_27"] call BIS_fnc_selectRandom;
	startPos = getMarkerPos _startMarker;
	publicVariable "startPos";

	{
	    if((side _x) == east) then
	    {
			_x setPos startPos;
	    };
	} foreach allUnits;

};




execVM "logic\hcHandle.sqf";
