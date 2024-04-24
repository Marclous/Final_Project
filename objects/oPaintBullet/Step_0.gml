if place_meeting(x,y,oSolidWall) {
	audio_play_sound(sdBulletHitWall,1,false)
	var effect_instance = instance_create_layer(x, y, "Effects", oPaintHitEffect);
	instance_destroy()
}

if place_meeting(x,y, oEnemy) {
	audio_play_sound(sdBulletHitWall,1,false)
	var effect_instance = instance_create_layer(x, y, "Effects", oPaintHitEffect);
	alarm[0] = 1
	
}

dir = direction
image_angle = direction

xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)

x+=xspd
y+=yspd

