if room == rm_tutorial1{	
	if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oDummy)&& !instance_exists(oAttackDummy) room_goto(rm_level1)
}
else if room == rm_tutorial2 {
	if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oDummy)&& !instance_exists(oAttackDummy) room_goto(rm_level2)
}else if room == rm_tutorial3 {
	if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oDummy)&& !instance_exists(oAttackDummy) room_goto(rm_level3114)
}else if room == rm_tutorial4 {
	if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oDummy) && !instance_exists(oAttackDummy) room_goto(rm_level4)
}