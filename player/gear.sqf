#include "..\logic\gear.sqf"

//Get player class and make sure it's all uppercase since BI classnames are super inconsistent
_class = typeOf player;
_class = toUpper _class;

//Remove all gear. Remove if only adding items or swapping non-containers
player call caran_clearInventory;

//Define default gear types. Leave as is if no change from default unit required (or remove both from here and from calls at the end of this file)
switch _class do {
	case "O_G_Soldier_F": {
		this forceAddUniform "U_OG_Guerilla2_3";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
		this addVest "V_Chestrig_khk";
		for "_i" from 1 to 4 do {this addItemToVest "rhs_VOG25";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
		this addWeapon "rhs_weap_akm_gp25";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "tf_microdagr";
		this linkItem "tf_fadak";
		this linkItem "ItemGPS";
	};

	case "O_G_Soldier_exp_F": {
		this forceAddUniform "U_OG_Guerilla3_1";
		this addItemToUniform "ACE_Clacker";
		for "_i" from 1 to 3 do {this addItemToUniform "rhs_30Rnd_545x39_AK";};
		this addVest "V_Chestrig_blk";
		for "_i" from 1 to 3 do {this addItemToVest "16Rnd_9x21_Mag";};
		this addBackpack "B_Kitbag_cbr";
		for "_i" from 1 to 4 do {this addItemToBackpack "rhsusf_m112_mag";};
		for "_i" from 1 to 2 do {this addItemToBackpack "APERSTripMine_Wire_Mag";};
		for "_i" from 1 to 3 do {this addItemToBackpack "IEDLandSmall_Remote_Mag";};
		this addWeapon "rhs_weap_aks74u";
		this addPrimaryWeaponItem "rhs_acc_pgs64_74u";
		this addWeapon "hgun_Rook40_F";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "tf_microdagr";
		this linkItem "tf_fadak";
		this linkItem "ItemGPS";
	};

	case "O_G_engineer_F": {
		this forceAddUniform "LOP_U_CHR_Woodlander_01";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_10Rnd_762x54mmR_7N1";};
		this addVest "V_Chestrig_khk";
		this addItemToVest "ACE_RangeCard";
		this addItemToVest "ACE_Kestrel4500";
		this addItemToVest "ACE_ATragMX";
		for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x19_17";};
		this addItemToVest "rhs_10Rnd_762x54mmR_7N1";
		this addWeapon "rhs_weap_svdp_npz";
		this addPrimaryWeaponItem "ACE_optic_SOS_2D";
		this addWeapon "rhs_weap_pya";
		this addWeapon "ACE_VectorDay";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "tf_microdagr";
		this linkItem "tf_fadak";
		this linkItem "ItemGPS";
	};

	case "O_soldier_repair_F": {
		this forceAddUniform "U_OG_Guerilla2_1";
		this addItemToUniform "rhs_30Rnd_762x39mm";
		this addVest "V_Chestrig_khk";
		this addItemToVest "ACE_RangeCard";
		this addItemToVest "ACE_Kestrel4500";
		this addItemToVest "ACE_ATragMX";
		for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x19_17";};
		this addItemToVest "rhs_10Rnd_762x54mmR_7N1";
		for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
		this addWeapon "rhs_weap_akm";
		this addPrimaryWeaponItem "rhs_acc_pbs1";
		this addPrimaryWeaponItem "rhs_acc_2dpZenit";
		this addWeapon "hgun_Pistol_heavy_01_F";
		this addHandgunItem "muzzle_snds_acp";
		this addHandgunItem "optic_MRD";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "tf_microdagr";
		this linkItem "tf_fadak_1";
		this linkItem "ItemGPS";
	};

  case "I_soldier_F": {
		this forceAddUniform "U_C_Journalist";
		this addVest "V_Press_F";
		this addHeadgear "H_Cap_press";
		this setSkill ["spotdistance", 0];
		this setSkill ["spottime", 60];
		this setSkill ["courage", 1];
	};

  case "B_soldier_repair_F": {
		this forceAddUniform "MNP_CombatUniform_Police";
		for "_i" from 1 to 8 do {this addItemToUniform "ACE_fieldDressing";};
		this addVest "V_TacVest_blk_POLICE";
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
		for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
		this addItemToVest "Chemlight_blue";
		this addItemToVest "ACE_HandFlare_Green";
		this addHeadgear "H_Cap_police";
		this addGoggles "G_Aviator";
		this addWeapon "rhs_weap_m4";
		this addPrimaryWeaponItem "acc_flashlight";
		this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
		this addWeapon "rhsusf_weap_m9";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "tf_anprc152";
	};

	case "B_medic_F": {
		_this forceAddUniform "U_B_GEN_Soldier_F";
		_this addVest "V_TacVest_blk_POLICE";
		_this addHeadgear "H_Cap_police";
		_this addWeapon "G_Aviator";
		_this addWeapon "Binocular";
		_this addWeapon "rhs_weap_m4";
		_this addWeapon "rhsusf_weap_m9";
		_this addPrimaryWeaponItem "acc_flashlight";
		_this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 3 do {_this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
		for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
		_this addItemToVest "Chemlight_blue";
		_this addItemToVest "ACE_HandFlare_Green";
		_this addBackpack "MNP_B_WB_AP";
		for "_i" from 1 to 30 do {_this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_morphine";};
		_this selectWeapon (primaryWeapon _this);
		_this linkItem "ItemMap";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_anprc152";
	};

};
