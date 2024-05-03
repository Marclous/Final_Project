draw_self()

if aimDir>=0 && aimDir<180 && array_length(global.Playerweapons) > 0{
	draw_my_weapon()
}

if aimDir >=180 && aimDir < 360 && array_length(global.Playerweapons) > 0{
	draw_my_weapon()
}