keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
shootkey = mouse_check_button(mb_left)
swapKeyPressed = keyboard_check_pressed(ord("Q"))
restartKey = keyboard_check(ord("R"))

//Player Movement
#region
//Input
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp)
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)
var lastInputDirection = 0

//Movement
if(!stopMotion)
{
	xvelocity = lengthdir_x(inputMagnitude * walkSpeed, inputDirection)
	yvelocity = lengthdir_y(inputMagnitude * walkSpeed, inputDirection)
}

if(stopMotion)
{
	xvelocity = 0
	yvelocity = 0
}

if place_meeting(x + xvelocity, y, oSolidWall) {
	xvelocity = 0
}
if place_meeting(x, y + yvelocity, oSolidWall) {
	yvelocity = 0
}

x += xvelocity
y += yvelocity

#endregion

if restartKey {
	room_restart()
	x = 768
	y = 111
	hit_point = 15
	
	instance_deactivate_object(oCamera)
	instance_activate_all()
}

if (inputMagnitude) {
    lastInputDirection = inputDirection;
}
centerY = y + centerYOffset
aimDir = point_direction(x, centerY, mouse_x, mouse_y)


//Sprite Control
#region
if(water == 0)
{
	image_speed = 1
	if xvelocity !=0 image_xscale = sign(xvelocity)
	if xvelocity != 0 ||yvelocity !=0 && gothit = false {
			sprite_index = sVentureRun
			/*if !audio_is_playing(sdStep) {
				audio_play_sound(sdStep,1,false)
			}*/
		} else if gothit != true {
			sprite_index = spr_girl
		}
	
}
if(water == 2)
{
	image_speed = 1
	//animation moving in water: TBD
	//animation staying in water: TBD
}


//collision
if place_meeting(x,y,oEnemyBullet) {
	gothit = true
	hit_point-=1
	show_debug_message(hit_point)
	//sprite_index =
	//受击动画
	
	screenshake(4,20)
	var bullet = instance_place(x, y, oEnemyBullet);
	if (bullet != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 5;
		    knockback_direction = point_direction(bullet.x, bullet.y, x, y);

		}
	instance_destroy(bullet)
	alarm[0] = 20	
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




#endregion

//Paint Release
if(!keyboard_check(vk_space))
{
	stopMotion = false
}

//Paint
if(keyboard_check(vk_space)&& water == 0)
{
	stopMotion = true
	alarm_set(0,30)
	water = 1
	sprite_index = sVentureDive
	image_index = 0

	CD = 0

}

if(water == 1&&!keyboard_check(vk_space))
{
	
	water = 0
	alarm_set(0,-1)
	sprite_index = spr_girl
	//jumping out of water animation: TBD
}

if(water == 2)
{
	stopMotion = false
	sprite_index = spr_shadow
	//swimming animation: TBD
	
	if(!keyboard_check(vk_space))
	{
		CD_Space = true
	}
	
	if(CD_Space)
	{
		if(keyboard_check(vk_space))
		{
			CD_Space = false
			water = -1
			sprite_index = sVentureDive
			alarm[1] = 15
			
		
			//jumping out of water animation: TBD
		}
	}
	
	if(CD >= 360)
	{
		CD_Space = false
		
		water = -1
		sprite_index = sVentureDive
		alarm[1] = 15
	}	
	
}

if(water == -1 && !keyboard_check(vk_space)&&alarm[1] <0)
{
	water = 0
}


CD++