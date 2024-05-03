var detection_radius = 50;  // You can change this to whatever value you need

// Check if obj_enemy is within the radius
if (distance_to_object(oMaya) <= detection_radius) || (distance_to_object(oVenture) <= detection_radius){	
	timer++

	if timer > spawntime {
	
		var _inst = instance_create_depth(x,y,depth-1, oEnemy)
		with _inst {
			image_alpha = 0
			state = EnemyState.Spawn
		}
	
		timer = 0
	}

}
if dead == true && image_alpha>0 {
	image_alpha-=0.1
}

if image_alpha<=0 instance_destroy()

if place_meeting(x,y,oDamageEnemy) takeDamage()

if gothit = false {
		sprite_index = sSpawner
		
	}

if place_meeting(x,y,oDamageEnemy) {
	gothit = true
	sprite_index = sSpawnerGotHit
	alarm[0] = 5
}