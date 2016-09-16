_class = typeOf _eastparr;
_eastparr = [assault,sniper,silentops,saboteur];

removeAllWeapons _eastparr;
removeAllItems _eastparr;
removeAllAssignedItems _eastparr;
removeUniform _eastparr;
removeVest _eastparr;
removeBackpack _eastparr;
removeHeadgear _eastparr;
removeGoggles _eastparr;
_eastparr enableFatigue false;

startMarker = ["start","start_1","start_2","start_3","start_4","start_5","start_6","start_7","start_8","start_9","start_10","start_11","start_12","start_13","start_14","start_15","start_16","start_17","start_18","start_19","start_20","start_21","start_22","start_23","start_24","start_25","start_26","start_27"] call BIS_fnc_selectRandom;

startPos = getMarkerPos startMarker;

publicVariable "startPos";
_eastparr setPos startPos;

switch _class do {
	case "O_G_Soldier_F": {
		_eastparr forceAddUniform "U_OG_Guerilla2_3";
		_eastparr addVest "V_Chestrig_khk";
		_eastparr addWeapon	"Binocular";
		_eastparr addBackpack "B_TacticalPack_blk";
		(backpackContainer _eastparr) addmagazinecargoGlobal ["rhs_30Rnd_762x39mm",1];
		(backpackContainer _eastparr) addmagazinecargoGlobal ["rhs_VOG25",1];
		_eastparr addWeapon "rhs_weap_akm_gp25";
		removeBackpack _eastparr;
		for "_i" from 1 to 2 do {_eastparr addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {_eastparr addItemToVest "rhs_VOG25";};
		for "_i" from 1 to 2 do {_eastparr addItemToVest "hs_30Rnd_762x39mm";};
		_eastparr linkItem "ItemMap";
		_eastparr linkItem "rhsusf_ANPVS_15";
		_eastparr linkItem "ItemCompass";
		_eastparr linkItem "tf_microdagr";
		_eastparr linkItem "tf_fadak";
		_eastparr linkItem "ItemGPS";
		_eastparr selectWeapon (primaryWeapon _eastparr);
	};
//saboteur killer
	case "O_G_Soldier_exp_F": {
		_eastparr forceAddUniform "U_OG_Guerilla3_1";
		_eastparr addBackpack "B_Bergen_sgg";
		(backpackContainer _eastparr) addmagazinecargoGlobal ["rhs_30Rnd_545x39_AK",1];
		(backpackContainer _eastparr) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
		_eastparr addWeapon "rhs_weap_aks74u";
		_eastparr addWeapon "hgun_Rook40_F";
		_eastparr addItemToUniform "ACE_Clacker";
		removeBackpack _eastparr;
		_eastparr addBackpack "B_Kitbag_cbr";
		for "_i" from 1 to 4 do {_eastparr addItemToBackpack "rhsusf_m112_mag";};
		for "_i" from 1 to 2 do {_eastparr addItemToBackpack "APERSTripMine_Wire_Mag";};
		for "_i" from 1 to 3 do {_eastparr addItemToBackpack "IEDLandSmall_Remote_Mag";};
		_eastparr addVest "V_Chestrig_blk";
		for "_i" from 1 to 2 do {_eastparr addItemToVest "rhs_30Rnd_545x39_AK";};
		for "_i" from 1 to 2 do {_eastparr addItemToVest "16Rnd_9x21_Mag";};
		_eastparr addWeapon	"Binocular";
		_eastparr linkItem "ItemMap";
		_eastparr linkItem "ItemCompass";
		_eastparr linkItem "tf_microdagr";
		_eastparr linkItem "tf_fadak";
		_eastparr linkItem "ItemGPS";
		_eastparr selectWeapon (primaryWeapon _eastparr);
	};
// sniper killer
	case "O_G_engineer_F": {
		_eastparr addBackpack "B_TacticalPack_blk";
		_eastparr addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";
		_eastparr addItemToBackpack "rhs_mag_9x19_17";
		_eastparr addWeapon "rhs_weap_svdp_npz";
		_eastparr addPrimaryWeaponItem "ACE_optic_SOS_2D";
		_eastparr addWeapon "rhs_weap_pya";
		removeBackpack _eastparr;
		_eastparr forceAddUniform "LOP_U_CHR_Woodlander_01";
		_eastparr addVest "V_Chestrig_khk";
		for "_i" from 1 to 3 do {_eastparr addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
		for "_i" from 1 to 3 do {_eastparr addItemToVest "rhs_mag_9x19_17";};
		_eastparr addItemToVest "ACE_RangeCard";
		_eastparr addItemToVest "ACE_Kestrel4500";
		_eastparr addItemToVest "ACE_ATragMX";
		_eastparr linkItem "rhsusf_ANPVS_15";
		_eastparr addWeapon	"ACE_VectorDay";
		_eastparr linkItem "ItemMap";
		_eastparr linkItem "ItemCompass";
		_eastparr linkItem "tf_microdagr";
		_eastparr linkItem "tf_fadak";
		_eastparr linkItem "ItemGPS";		
		_eastparr selectWeapon (primaryWeapon _eastparr);
	};
//silent ops killer
	case "O_soldier_repair_F": {
		_eastparr addBackpack "B_TacticalPack_blk";
		(backpackContainer _eastparr) addmagazinecargoGlobal ["rhs_30Rnd_762x39mm",1];
		(backpackContainer _eastparr) addmagazinecargoGlobal ["11Rnd_45ACP_Mag",1];
		_eastparr addWeapon "rhs_weap_akm";
		_eastparr addPrimaryWeaponItem "rhs_acc_pbs1";
		_eastparr addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_eastparr addWeapon "hgun_Pistol_heavy_01_F";
		_eastparr addHandgunItem "muzzle_snds_acp";
		_eastparr addHandgunItem "optic_MRD";
		removeBackpack _eastparr;
		_eastparr forceAddUniform "U_OG_Guerilla2_1";
		for "_i" from 1 to 2 do {_eastparr addItemToUniform "rhs_30Rnd_762x39mm";};
		for "_i" from 1 to 3 do {_eastparr addItemToUniform "11Rnd_45ACP_Mag";};
		_eastparr addWeapon	"Binocular";
		_eastparr linkItem "ItemMap";
		_eastparr linkItem "ItemCompass";
		_eastparr linkItem "tf_microdagr";
		_eastparr linkItem "tf_fadak_1";
		_eastparr linkItem "ItemGPS";		
		_eastparr selectWeapon (primaryWeapon _eastparr);
	};
};

sleep 5;

badcar1 setPos (getPos assault vectorAdd [10,10,0.5]);
badcar3 setPos (getPos saboteur vectorAdd [10,10,0.5]);
badcar2 setPos (getPos sniper vectorAdd [10,10,0.5]);
badcar4 setPos (getPos silentops vectorAdd [10,10,0.5]);

assault moveindriver badcar1;
sniper moveindriver badcar2;
saboteur moveindriver badcar3;
silentops moveindriver badcar4;