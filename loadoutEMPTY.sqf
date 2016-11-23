_mrapsarr = [hunt1, hunt2, hunt3, hunt4];
_heliarr = [heli1];
_badveharr = [badcar1, badcar2, badcar3, badcar4];
_allveharr = [hunt1, hunt2, hunt3, hunt4, heli1, badcar1, badcar2, badcar3, badcar4];

{

    clearMagazineCargoGlobal _x;
    clearweaponcargoGlobal _x;
    clearItemCargoGlobal _x;
    
    if (vehicleVarname _x == heli1) then {
    
        _x addBackpackCargoGlobal ["B_OutdoorPack_blk",1];
        _x addItemCargoGlobal ["ToolKit", 1];
        _x addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", 4];
        _x addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4];
        _x addMagazineCargoGlobal ["ACE_HandFlare_Green", 8];
        _x addMagazineCargoGlobal ["Chemlight_green", 4];
        _x addMagazineCargoGlobal ["SmokeShellRed", 4];
        _x addMagazineCargoGlobal ["SmokeShell", 4];
        _x addItemCargoGlobal ["NVGoggles_OPFOR", 2];
    
    };

} forEach _allveharr;

//cop vehicle

{
    _x addBackpackCargoGlobal ["B_OutdoorPack_blk",1];
    _x addItemCargoGlobal ["ToolKit",1];
    _x addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4];
    _x addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", 4];
    _x addMagazineCargoGlobal ["ACE_HandFlare_Green", 4];
    _x addMagazineCargoGlobal ["Chemlight_green", 4];
    _x addMagazineCargoGlobal ["SmokeShellRed", 4];
    _x addMagazineCargoGlobal ["SmokeShell", 4];
    _x addItemCargoGlobal ["ACE_fieldDressing", 2];
} forEach _mrapsarr;

//bad cars
{
    _x addBackpackCargoGlobal ["B_OutdoorPack_blk",1];
    _x addItemCargoGlobal ["ToolKit",1];
    _x addItemCargoGlobal ["30Rnd_762x39_Mag_F", 1];
    _x addItemCargoGlobal ["20Rnd_762x51_Mag", 1];
    _x addItemCargoGlobal ["ACE_fieldDressing", 2];
} forEach _badveharr;