if (place_meeting(x,y, oMaya) || place_meeting(x,y, oVenture)) && !instance_exists(oEnemy) && !instance_exists(oSpawner5) {

	startDialogue("Level5End")
}
