_ace_settings = [ 
	/*Medical settings*/ 
	["ace_medical_level", 1], /*Medical level (2 = advanced, 1 = basic)*/
];

/*Set all settings*/
{
	missionNamespace setVariable _x;
} forEach _ace_settings;