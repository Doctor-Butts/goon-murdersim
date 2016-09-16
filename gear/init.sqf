{
    if((side _x) == east) then
    {
		_x execVM "gear\loadoutEAST.sqf";
    };
} foreach allUnits;

{
    if((side _x) == west) then
    {
		_x execVM "gear\loadoutWEST.sqf";
    };
} foreach allUnits;

{
    if((side _x) == resistance) then
    {
		_x execVM "gear\loadoutIND.sqf";
    };
} foreach allUnits;
