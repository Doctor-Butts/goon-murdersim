waitUntil {!(isNull player)};
waitUntil {player==player};
switch (side player) do
{
case WEST:
{
ta03 = player createSimpleTask ["Kill all of the assassins!"];
ta03 setSimpleTaskDescription ["There are up to 4 roaming the island looking for reporters.","Kill all of the assassins!","Kill all of the assassins!"];
ta04 = player createSimpleTask ["Do not kill civilians!"];
ta04 setSimpleTaskDescription ["The governor will have our head if more than one is killed!","Do not kill civilians!","Do not kill civilians!"];
player setCurrentTask ta03;
player createDiaryRecord ["Diary",["Credits","This is based off of the Serial Killers mission in Operation Flashpoint.<br/>
<br/>
Known scripts used<br/>
Farooqs revive system<br/>
I modified Mando No Radar to work with ARMA 3<br/>
Core Time script for skiptime<br/>
LEAs loadout gen<br/>
LATAWIEC for this briefing<br/>
<br/>
Thanks to google for being a cool search engine and BIS/ARMAHOLIC forums for answering so many of the questions.
<br/>
Thanks to the goons for testing."]];
player createDiaryRecord ["Diary",["Friendly Forces","We will have up to 20 cops on hand to deploy for this operation.
<br/>
We are only equipped with SMGs and pistols, but a lot of spare ammo, and more of us than them.<br/>
<br/><br/>
We also have medics, as well as 4 Hunters, 1 Hummingbird, and HEMTTs on standby at our <font color='#3333FF'><marker name='copsbase'>base</marker></font>."]];
player createDiaryRecord ["Diary",["Enemy Forces","We heard that Dom has sent up to 4 killers to eliminate the journalists.<br/>
<br/>
Reports also indicate that they have advanced weaponry and equipment. But due to a lost shipment of arms, they do not have a lot of ammo to spare. They also do not have a lot of medical experience so they need to be careful.<br/>
<br/>
Based on this, I advise you to not get caught in a long range firefight. However, if you are able to close in, you have a lot more ammo to use covering fire and other tactics. Wounding shots will hamper them severely. Use your numbers to your advantage.<br/>
<br/>
They may wish to avoid conflict altogether, so they may flee instead of fight."]];
player createDiaryRecord ["Diary",["Intel","There are 10 reporters on the eastern side of the island we need to protect. The last known areas on the map are indicated.<br/>
<br/>
All reporters are dressed in this example uniform
<img image='pressman.jpg'/><br/>
<br/>
Once we are notified by neighborhood watch that a reporter has died, I will tell you and update the map. Remember, it takes time for them to notify us, and the killers may have left the area by the time I let you know.<br/>
<br/>
Last Known Locations<br/>
A reporter was last seen on the <font color='#3333FF'><marker name='press10mark'>shipping dock</marker></font> of the power plant.<br/>
A reporter was last seen in the <font color='#3333FF'><marker name='press2mark'>storage facility</marker></font>  in the outskirts of Charkia.<br/>
A reporter was last seen around the <font color='#3333FF'><marker name='press4mark'>church</marker></font>  in Rodopoli.<br/>
A reporter was last seen near the <font color='#3333FF'><marker name='press5mark'>soccer field</marker></font>  near Paros.<br/>
A tow truck reported that a reporters <font color='#3333FF'><marker name='press8mark'>car has broken down</marker></font>  near Almyra.<br/>
A receptionist at the <font color='#3333FF'><marker name='press6mark'>Ghost Hotel</marker></font>  reported that a journalist was staying there.<br/>
A reporter was spotted near the <font color='#3333FF'><marker name='press9mark'>radar installation</marker></font>  around Sophia.<br/>
A reporter was last seen on the <font color='#3333FF'><marker name='press1mark'>docks</marker></font>  of Pyrgos.<br/>
A reporter was seen buying refreshments from a <font color='#3333FF'><marker name='press3mark'>BluKing</marker></font>  in Dorida.<br/>
A reporter was observed relaxing on the balcony of a house in <font color='#3333FF'><marker name='press7mark'>Chalkeia</marker></font>."]];
player createDiaryRecord ["Diary",["Mission","Search the <font color='#3333FF'><marker name='missionareamain'>eastern part of the island</marker></font>  for the assassins and kill them before they can eliminate all of the reporters.<br/>
<br/>
I marked the <font color='#3333FF'><marker name='press1mark'>last known location</marker></font>  of each reporter on your map.
<br/>
Additional vehicles can be found at our <font color='#3333FF'><marker name='copsbase'>base</marker></font>.<br/>
<br/>
Tensions are high enough on Altis as it is. If we are caught killing more than one civilian, we are out of a job.<br/>



"]];
player createDiaryRecord ["Diary",["Situation","Reporters from Altis Life are following up on some leads they have about locations that crime boss Dom The Dictator is using to smuggle arms, money, and contraband in the country.<br/>
<br/>
We been tipped off by an anonymous source that Dom has hired some assassins to kill them before they can write their article."]];


};
case EAST:
{
ta01 = player createSimpleTask ["Kill all of the reporters!"];
ta01 setSimpleTaskDescription ["There are 10 total on the island in marked cities.","Kill all of the reporters!","Kill all of the reporters!"];
ta02 = player createSimpleTask ["Kill all of the cops!"];
ta02 setSimpleTaskDescription ["Easier said than done, but you will win if this is completed first.","Kill all of the cops!","Kill all of the cops!"];
player setCurrentTask ta01;
player createDiaryRecord ["Diary",["Credits","This is based off of the Serial Killers mission in Operation Flashpoint.<br/>
<br/>
Known scripts used<br/>
Farooqs revive system<br/>
I modified Mando No Radar to work with ARMA 3<br/>
Core Time script for skiptime<br/>
LEAs loadout gen<br/>
LATAWIEC for this briefing<br/>
<br/>
Thanks to google for being a cool search engine and BIS/ARMAHOLIC forums for answering so many of the questions.<br/>
<br/>
Thanks to the goons for testing."]];
player createDiaryRecord ["Diary",["Friendly Forces","I got the best gear money could buy, but that moron Jimmy got busted last month trying to smuggle in a few crates.<br/>
<br/>
That means you dont have a lot of ammo.<br/>
<br/>
Use your gear to your advantage, take long shots. Sneak, take your time.<br/>
<br/>
We do not have much spare medical equipment and none of you guys are trained medics, so BE CAREFUL.<br/>
<br/>
You can only repair your vehicle so much. If its busted, try to take one from a civilian or an empty one in the middle of a reporters town."]];
player createDiaryRecord ["Diary",["Enemy Forces","Up to 20 cops.<br/>
<br/>
They only have SMGs and pistols, but a lot of bullets.<br/>
They also have trained medics ready to go.<br/>
<br/>
They have bulletproof Hunters and a Hummingbird ready to deploy.<br/>
<br/>
They also have utility HEMTTs on standby.<br/>
<br/>
They are likely to hunt us down and get close, and perhaps swarm."]];
player createDiaryRecord ["Diary",["Intel","There are 10 reporters on the eastern side of the island we need to kill. The last known areas on the map are indicated.<br/>
<br/>
All reporters are dressed in this example uniform<br/>
<img image='pressman.jpg'/><br/>
<br/>
I will let you know the moment we get a confirmed kill. It will take time for the cops to figure it out, but they will send out an alarm when they do.<br/>
<br/>
Last Known Locations<br/>
A reporter was last seen on the <font color='#3333FF'><marker name='press10mark'>shipping dock</marker></font> of the power plant.<br/>
A reporter was last seen in the <font color='#3333FF'><marker name='press2mark'>storage facility</marker></font> in the outskirts of Charkia.<br/>
A reporter was last seen around the <font color='#3333FF'><marker name='press4mark'>church</marker></font> in Rodopoli.<br/>
A reporter was last seen near the <font color='#3333FF'><marker name='press5mark'>soccer field</marker></font> near Paros.<br/>
A tow truck reported that a reporters <font color='#3333FF'><marker name='press8mark'>car has broken down</marker></font> near Almyra.<br/>
A receptionist at the <font color='#3333FF'><marker name='press6mark'>Ghost Hotel</marker></font> reported that a journalist was staying there.<br/>
A reporter was spotted near the <font color='#3333FF'><marker name='press9mark'>radar installation</marker></font> around Sophia.<br/>
A reporter was last seen on the <font color='#3333FF'><marker name='press1mark'>docks</marker></font> of Pyrgos.<br/>
A reporter was seen buying refreshments from a <font color='#3333FF'><marker name='press3mark'>BluKing</marker></font> in Dorida.<br/>
A reporter was observed relaxing on the balcony of a house in <font color='#3333FF'><marker name='press7mark'>Chalkeia</marker></font>."]];
player createDiaryRecord ["Diary",["Mission","Kill all of the Altis Life journalists on the <marker name='missionareamain'>eastern side</marker> of the island.<br/>
<br/>
Their locations are marked like <font color='#3333FF'><marker name='press1mark'>this</marker></font>.<br/>
<br/>
If you leave the <font color='#FF0000'><marker name='missionareamain'>mission area</marker></font> outlined in red, I will have you killed for abandoning the mission."]];
player createDiaryRecord ["Diary",["Situation","I caught some reporters from Altis Life sneaking around my property.  I cannot have them exposing my criminal deeds, you understand?<br/>
<br/>
There are a bunch of them on the eastern side of the island. Kill them all!"]];
};
case RESISTANCE:
{


};
case CIVILIAN:
{


};
};