restartKey = keyboard_check(ord("R"))
cheatKey = keyboard_check(ord("X"))
if restartKey {
	room_restart()
	global.mayahp = 10
	global.venturehp = 10
	instance_destroy(oCamera)
	instance_activate_all()
	var _cam = instance_create_depth(x,y,-1,oCamera)
}

if cheatKey {
	instance_destroy(oEnemy)
	instance_destroy(oSpawner4)
	instance_destroy(oSpawner5)
}

if room == rm_finale {
	instance_destroy(oCamera)
	instance_destroy(oHP)
}