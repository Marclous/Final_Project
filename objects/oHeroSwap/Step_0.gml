if keyboard_check_released(ord("E")) {
	if instance_exists(oMaya) {
		var venture = instance_create_depth(oMaya.x, oMaya.y, depth, oVenture)
		instance_destroy(oMaya)
	}else if instance_exists(oVenture) {
		var maya = instance_create_depth(oVenture.x,oVenture.y,depth,oMaya)
		instance_destroy(oPaintGun)
		instance_destroy(oVenture)
	}
}