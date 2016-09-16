_startMarker = ["start","start_1","start_2","start_3","start_4","start_5","start_6","start_7","start_8","start_9","start_10","start_11","start_12","start_13","start_14","start_15","start_16","start_17","start_18","start_19","start_20","start_21","start_22","start_23","start_24","start_25","start_26","start_27"] call BIS_fnc_selectRandom;
startPos = getMarkerPos _startMarker;
publicVariable "startPos";


execVM "briefing.sqf";

/*if (local player) then {
   player enableFatigue false;
   player addEventhandler ["Respawn", {player enableFatigue false}];
};*/

{
    if((side _x) == east) then
    {
		_x setPos startPos;
    };
} foreach allUnits;
