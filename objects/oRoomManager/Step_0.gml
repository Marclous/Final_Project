restartKey = keyboard_check(ord("R"))
if restartKey {
	room_restart()
	global.mayahp = 10
	global.venturehp = 10
	instance_deactivate_object(oCamera)
	instance_activate_all()
}
