randomize()
var _collision = true
var _getDamage = true
if !instance_exists(oTextbox){
switch state {
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
}
if(allow_shoot == true) && instance_exists(oMaya) && !instance_exists(oTextbox){
	_angle = point_direction(x,y,oMaya.x,oMaya.y)
	direction = _angle
	var effect_x = x + lengthdir_x(30, _angle);
	var effect_y = y + lengthdir_y(30, _angle);
	var _enemy_bullet = instance_create_layer(effect_x, effect_y, "Instances", oEnemyBullet);
	var effect_instance = instance_create_layer(effect_x, effect_y, "Effects", oExplode);
	var decal = instance_create_depth(x, y, depth, oEnemyBulletDecal)
	with decal {
		direction = random(360)
		knockback_speed = 10
	}
	effect_instance.direction = _angle;
	effect_instance.image_angle = _angle;
	audio_play_sound(sdEnemyShoot,1,false)
	with(_enemy_bullet){
		speed = 1;
		direction = point_direction(x,y,oMaya.x,oMaya.y); 
		image_angle = direction
		}
	allow_shoot = false;
	alarm[2]= 60;
	
} else if (allow_shoot == true) && instance_exists(oVenture) && !instance_exists(oTextbox){
	_angle = point_direction(x,y,oVenture.x,oVenture.y)
	direction = _angle
	var effect_x = x + lengthdir_x(30, _angle);
	var effect_y = y + lengthdir_y(30, _angle);
	var _enemy_bullet = instance_create_layer(effect_x, effect_y, "Instances", oEnemyBullet);
	var effect_instance = instance_create_layer(effect_x, effect_y, "Effects", oExplode);
	var decal = instance_create_depth(x, y, depth, oEnemyBulletDecal)
	with decal {
		direction = random(360)
		knockback_speed = 10
	}
	effect_instance.direction = _angle;
	effect_instance.image_angle = _angle;
	audio_play_sound(sdEnemyShoot,1,false)
	with(_enemy_bullet){
		speed = 1;
		direction = point_direction(x,y,oVenture.x,oVenture.y); 
		image_angle = direction
		}
	allow_shoot = false;
	alarm[2]= 60;
}

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


