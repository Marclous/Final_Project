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
			sprite_index = spr_girl_1
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
	sprite_index = spr_girl_2
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
			sprite_index = spr_girl
			
			instance_create_layer()
		
			//jumping out of water animation: TBD
		}
	}
	
	if(CD >= 360)
	{
		CD_Space = false
		
		water = -1
		sprite_index = spr_girl
	}	
	
}

if(water == -1 && !keyboard_check(vk_space))
{
	water = 0
}


CD++
