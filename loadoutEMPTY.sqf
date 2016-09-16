_mrapsarr = [hunt1, hunt2, hunt3, hunt4];
_heliarr = [heli1];
_badveharr = [badcar1, badcar2, badcar3, badcar4];
_allveharr = [hunt1, hunt2, hunt3, hunt4, heli1, badcar1, badcar2, badcar3, badcar4];

//clearMagazineCargoGlobal [hunt1, hunt2, hunt3, hunt4, heli1, badcar1, badcar2, badcar3, badcar4];
//clearweaponcargoGlobal [hunt1, hunt2, hunt3, hunt4, heli1, badcar1, badcar2, badcar3, badcar4];
//clearItemCargoGlobal [hunt1, hunt2, hunt3, hunt4, heli1, badcar1, badcar2, badcar3, badcar4];
{clearMagazineCargoGlobal _x} forEach vehicles;
{clearweaponcargoGlobal _x} forEach vehicles;
{clearItemCargoGlobal _x} forEach vehicles;

//cop vehicle

{_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(0,0,0.2,0.2)']} forEach _mrapsarr;
{_x addBackpackCargoGlobal ["B_OutdoorPack_blk",1]} forEach _mrapsarr;
{_x additemcargoGlobal ["ToolKit",1]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", 10]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["ACE_HandFlare_Green", 8]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["Chemlight_green", 8]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["SmokeShellRed", 8]} forEach _mrapsarr;
{_x addMagazinecargoGlobal ["SmokeShell", 8]} forEach _mrapsarr;
{_x additemcargoglobal ["FirstAidKit", 1];
//bad cars
{_x addBackpackCargoGlobal ["B_OutdoorPack_blk",1]} forEach _badveharr;
{_x additemcargoGlobal ["ToolKit",1]} forEach _badveharr;
{_x additemcargoglobal ["FirstAidKit", 1]} forEach _badveharr;
// helicopter is special
//{_x setVariable ["BIS_enableRandomization", false]} forEach _heliarr;
//{_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(1,0,0.2,0.2)']} forEach _heliarr;
//heli1 setVariable ["BIS_enableRandomization", false];
//heli1 setObjectTextureGlobal [0,'#(argb,8,8,3)color(0,0,0.2,0.2)'];
heli1 addBackpackCargoGlobal ["B_OutdoorPack_blk",1]};
heli1 additemcargoGlobal ["ToolKit", 1];
heli1 addMagazinecargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", 10];
heli1 addMagazinecargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10];
heli1 addMagazinecargoGlobal ["ACE_HandFlare_Green", 8];
heli1 addMagazinecargoGlobal ["Chemlight_green", 8];
heli1 addMagazinecargoGlobal ["SmokeShellRed", 8];
heli1 addMagazinecargoGlobal ["SmokeShell", 8];
heli1 additemcargoglobal ["FirstAidKit", 1];

