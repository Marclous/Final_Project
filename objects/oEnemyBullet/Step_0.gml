if place_meeting(x,y,oSolidWall) {
	//audio_play_sound(sdBulletHitWall,1,false)
	instance_destroy()
}

if place_meeting(x,y, oMaya) {
	audio_play_sound(sdBulletHitWall,1,false)
	screenshake(4,20)
}


