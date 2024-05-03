
state = EnemyState.Idle	

close = 150
far = 300
fadeSpd = 1/15
emergeSpd = 0.25

hit_point = 15
knockback_speed = 0;
knockback_direction = 0;


function takeDamage() {
	if hit_point>1 {
		
		show_debug_message(hit_point)
		var bullet = instance_place(x, y, oDamageEnemy);
		hit_point-= bullet.damage
		
	}
	else {
		var bullet = instance_place(x, y, oRifleBullet);
		instance_destroy()
	}
}

allow_shoot = true;

alarm[0] = room_speed * 3;
invicible = false;
invicible_timer = 0;
invicible_duration = 20;
gothit = false