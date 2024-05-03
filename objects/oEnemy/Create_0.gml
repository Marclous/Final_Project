enum EnemyState{
	Idle,
	Moving,
	Spawn
}

state = EnemyState.Idle	

close = 150
far = 300
fadeSpd = 1/15
emergeSpd = 0.25

hit_point = 15
knockback_speed = 0;
knockback_direction = 0;
allow_shoot = true

function takeDamage() {
	if hit_point>1 {
		
		show_debug_message(hit_point)
		var bullet = instance_place(x, y, oDamageEnemy);
		hit_point-= bullet.damage
		if (bullet != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 10;
		    knockback_direction = point_direction(bullet.x, bullet.y, x, y);
		    var hit_by_bullet_id = bullet.bullet_id; 

		}
	}
	else {
		var bullet = instance_place(x, y, oRifleBullet);
		if (bullet != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 10;
		    knockback_direction = point_direction(bullet.x, bullet.y, x, y);
		    var hit_by_bullet_id = bullet.bullet_id; 

		}
		instance_destroy()
	}
}
alarm[0] = room_speed * 3;
invicible = false;
invicible_timer = 0;
invicible_duration = 20;
gothit = false