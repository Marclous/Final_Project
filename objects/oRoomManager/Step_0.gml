restartKey = keyboard_check(ord("R"))

if restartKey {
	room_restart()
	global.mayahp = 10
	global.venturehp = 10
	instance_destroy(oCamera)
	instance_activate_all()
	var _cam = instance_create_depth(x,y,-1,oCamera)
}

