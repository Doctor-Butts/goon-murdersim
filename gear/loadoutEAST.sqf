_class = typeOf _this;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;
_this enableFatigue false;

switch _class do {
	case "O_G_Soldier_F": {
		_this forceAddUniform "U_OG_Guerilla2_3";
		_this addVest "V_Chestrig_khk";
		_this addWeapon	"Binocular";
		_this addBackpack "B_TacticalPack_blk";
		(backpackContainer _this) addmagazinecargoGlobal ["rhs_30Rnd_762x39mm",1];
		(backpackContainer _this) addmagazinecargoGlobal ["rhs_VOG25",1];
		_this addWeapon "rhs_weap_akm_gp25";
		removeBackpack _this;
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {_this addItemToVest "rhs_VOG25";};
		for "_i" from 1 to 2 do {_this addItemToVest "hs_30Rnd_762x39mm";};
		_this linkItem "ItemMap";
		_this linkItem "rhsusf_ANPVS_15";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_fadak";
		_this linkItem "ItemGPS";
		_this selectWeapon (primaryWeapon _this);
	};
//saboteur killer
	case "O_G_Soldier_exp_F": {
		_this forceAddUniform "U_OG_Guerilla3_1";
		_this addBackpack "B_Bergen_sgg";
		(backpackContainer _this) addmagazinecargoGlobal ["rhs_30Rnd_545x39_AK",1];
		(backpackContainer _this) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
		_this addWeapon "rhs_weap_aks74u";
		_this addWeapon "hgun_Rook40_F";
		_this addItemToUniform "ACE_Clacker";
		removeBackpack _this;
		_this addBackpack "B_Kitbag_cbr";
		for "_i" from 1 to 4 do {_this addItemToBackpack "rhsusf_m112_mag";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "APERSTripMine_Wire_Mag";};
		for "_i" from 1 to 3 do {_this addItemToBackpack "IEDLandSmall_Remote_Mag";};
		_this addVest "V_Chestrig_blk";
		for "_i" from 1 to 2 do {_this addItemToVest "rhs_30Rnd_545x39_AK";};
		for "_i" from 1 to 2 do {_this addItemToVest "16Rnd_9x21_Mag";};
		_this addWeapon	"Binocular";
		_this linkItem "ItemMap";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_fadak";
		_this linkItem "ItemGPS";
		_this selectWeapon (primaryWeapon _this);
	};
// sniper killer
	case "O_G_engineer_F": {
		_this addBackpack "B_TacticalPack_blk";
		_this addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";
		_this addItemToBackpack "rhs_mag_9x19_17";
		_this addWeapon "rhs_weap_svdp_npz";
		_this addPrimaryWeaponItem "ACE_optic_SOS_2D";
		_this addWeapon "rhs_weap_pya";
		removeBackpack _this;
		_this forceAddUniform "LOP_U_CHR_Woodlander_01";
		_this addVest "V_Chestrig_khk";
		for "_i" from 1 to 3 do {_this addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
		for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_9x19_17";};
		_this addItemToVest "ACE_RangeCard";
		_this addItemToVest "ACE_Kestrel4500";
		_this addItemToVest "ACE_ATragMX";
		_this linkItem "rhsusf_ANPVS_15";
		_this addWeapon	"ACE_VectorDay";
		_this linkItem "ItemMap";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_fadak";
		_this linkItem "ItemGPS";
		_this selectWeapon (primaryWeapon _this);
	};
//silent ops killer
	case "O_soldier_repair_F": {
		_this addBackpack "B_TacticalPack_blk";
		(backpackContainer _this) addmagazinecargoGlobal ["rhs_30Rnd_762x39mm",1];
		(backpackContainer _this) addmagazinecargoGlobal ["11Rnd_45ACP_Mag",1];
		_this addWeapon "rhs_weap_akm";
		_this addPrimaryWeaponItem "rhs_acc_pbs1";
		_this addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_this addWeapon "hgun_Pistol_heavy_01_F";
		_this addHandgunItem "muzzle_snds_acp";
		_this addHandgunItem "optic_MRD";
		removeBackpack _this;
		_this forceAddUniform "U_OG_Guerilla2_1";
		for "_i" from 1 to 2 do {_this addItemToUniform "rhs_30Rnd_762x39mm";};
		for "_i" from 1 to 3 do {_this addItemToUniform "11Rnd_45ACP_Mag";};
		_this addWeapon	"Binocular";
		_this linkItem "ItemMap";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_fadak_1";
		_this linkItem "ItemGPS";
		_this selectWeapon (primaryWeapon _this);
	};
};
