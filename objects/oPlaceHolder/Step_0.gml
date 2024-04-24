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
xvelocity = lengthdir_x(inputMagnitude * walkSpeed, inputDirection)
yvelocity = lengthdir_y(inputMagnitude * walkSpeed, inputDirection)

if place_meeting(x + xvelocity, y, oSolidWall) {
	xvelocity = 0
}
if place_meeting(x, y + yvelocity, oSolidWall) {
	yvelocity = 0
}

x += xvelocity
y += yvelocity

#endregion

if global.currentHero != oPlaceHolder && visible == true{
	show_debug_message("deactivate place")
	global.currentHero.x = x
	global.currentHero.y = y
	instance_deactivate_object(oPlaceHolder)
	visible = false
}else if  global.currentHero == oPlaceHolder && visible == false{
	show_debug_message("activate place")
	instance_activate_object(oPlaceHolder)
	visible = true
}