_class = typeOf _this;

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

switch _class do {
	case "I_soldier_F": {
		_this forceAddUniform "U_C_Journalist";
		_this addVest "V_Press_F";
		_this setSkill ["spotdistance", 0];
		_this setSkill ["spottime", 60];
		_this setSkill ["courage", 1];
	};
};