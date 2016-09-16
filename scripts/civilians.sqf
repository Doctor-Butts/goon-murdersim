SHK_DeadCivilianCount = 0;
SHK_DeadCivilianLimit = 2;
SHK_EndMission = false;
[] spawn {
  waituntil {SHK_EndMission};
  cuttext ["Game over. Unfortunately, you killed too many civilians.","PLAIN",2];
  sleep 5;
  endmission "END4";
  forceEnd;
};

SHK_fnc_deadCivilians = {
  hintsilent format ["Civilians dead: %1",_this];
  if (_this >= SHK_DeadCivilianLimit) then {
    SHK_EndMission = true;
    publicvariable "SHK_EndMission";
  };
};

SHK_eh_killed = {
  private "_side";
  _side = side (_this select 1);
  if (_side == WEST) then {
    SHK_DeadCivilianCount = SHK_DeadCivilianCount + 1;
    publicvariable "SHK_DeadCivilianCount";
    if isdedicated then {
      if (_this >= SHK_DeadCivilianLimit) then {
        SHK_EndMission = true;
        publicvariable "SHK_EndMission";
      };
    } else {
      SHK_DeadCivilianCount call SHK_fnc_deadCivilians;
    };
  };
};
if isserver then {
  {
    if (side _x == Civilian && _x iskindof "Man") then {
      _x addEventHandler ["killed", SHK_eh_killed];
    };
  } foreach allunits;
} else {
  "SHK_DeadCivilianCount" addpublicvariableeventhandler { (_this select 1) call SHK_fnc_deadCivilians };
};
