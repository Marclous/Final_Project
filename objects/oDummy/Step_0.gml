randomize()
var _collision = true
var _getDamage = true
/*switch state {
	case EnemyState.Spawn:
		if image_alpha < 1{
			image_alpha += fadeSpd	
		}
		
		_collision = false
		if image_alpha>=1 {
			speed = emergeSpd
			direction = 270
		}
		
	break;
	//chase state
	case EnemyState.Idle:
	speed = 0
	break;
	
	case EnemyState.Moving:
	var dir = point_direction(x, y, target_x, target_y);
        direction = dir;
        speed = 2; // Adjust speed as needed
        
        // Check if near the target point to switch back to idle sooner
        if (point_distance(x, y, target_x, target_y) < 10) {
            state = EnemyState.Idle;
            speed = 0;
            alarm[0] = room_speed * random_range(0, 1.5); // Idle for 2 to 4 seconds
        }
		if _collision == true && (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), oSolidWall)) {
            // If a collision is detected, switch to idle state and reset the alarm
			knockback_direction *=-1
            state = EnemyState.Idle;
            speed = 0;
            alarm[0] = room_speed * (random_range(0, 1.5)); // Go idle before trying to move again
        }
	break;
}
*/
if (place_meeting(x,y,oRifleBullet) ||place_meeting(x,y,oPaintBullet)) {
	var _effect = instance_create_layer(x, y, "Effects", oExplode);
	takeDamage()
	invicible = true
}

image_speed = 1
if speed != 0 image_xscale = sign(speed)
if speed != 0 && gothit == false{
		sprite_index = sEnemyWalk
		/*if !audio_is_playing(sdStep) {
			audio_play_sound(sdStep,1,false)
		}*/
	} else if gothit != true{
		sprite_index = sEnemyIdle
	}

if (knockback_speed > 0) {
    // Apply movement in the knockback direction
	if !place_meeting(x,y, oSolidWall){
		x += lengthdir_x(knockback_speed, knockback_direction);
		y += lengthdir_y(knockback_speed, knockback_direction);
	}else if place_meeting(x,y,oSolidWall) {
		x -= lengthdir_x(knockback_speed, knockback_direction);
		y -= lengthdir_y(knockback_speed, knockback_direction);
	}
    // Gradually reduce the knockback speed to simulate friction or resistance
    knockback_speed -= 1; 

    // Prevent knockback speed from becoming negative
    if (knockback_speed < 0) {
        knockback_speed = 0;
		
    }
}

if place_meeting(x,y,oRifleBullet) {
	gothit = true
	sprite_index = sEnemyGothit
	alarm[1] = 20	
}


