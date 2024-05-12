if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oEnemy) && !instance_exists(oSpawner4) {

	startDialogue("Level4End")
}
