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
//regular cop
	case "B_soldier_repair_F": {
		_this forceAddUniform "U_B_GEN_Soldier_F";
		_this addVest "V_TacVest_blk_POLICE";
		_this addHeadgear "H_Cap_police";
		_this addWeapon "G_Aviator";
		_this addWeapon "Binocular";
		_this addBackpack "B_TacticalPack_blk";
		_this addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";
		_this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_this addWeapon "rhs_weap_m4";
		_this addWeapon "rhsusf_weap_m9";
		_this addPrimaryWeaponItem "acc_flashlight";
		_this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
		removeBackpack _this;
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 3 do {_this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
		for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
		_this addItemToVest "Chemlight_blue";
		_this addItemToVest "ACE_HandFlare_Green";
		_this selectWeapon (primaryWeapon _this);
		_this linkItem "ItemMap";
		_this linkItem "ItemCompass";
		_this linkItem "tf_microdagr";
		_this linkItem "tf_anprc152_1";
	};
//medic cop
	case "B_medic_F": {
_this forceAddUniform "U_B_GEN_Soldier_F";
		_this addVest "V_TacVest_blk_POLICE";
		_this addHeadgear "H_Cap_police";
		_this addWeapon "G_Aviator";
		_this addWeapon "Binocular";
		_this addBackpack "B_TacticalPack_blk";
		_this addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";
		_this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_this addWeapon "rhs_weap_m4";
		_this addWeapon "rhsusf_weap_m9";
		_this addPrimaryWeaponItem "acc_flashlight";
		_this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
		removeBackpack _this;
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
		_this linkItem "tf_anprc152_1";
	};
};