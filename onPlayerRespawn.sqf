{
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