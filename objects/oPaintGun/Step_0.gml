if(oPlayer1.water == 0||oPlayer1.water == -1)
{
	x = oPlayer1.x
	y = oPlayer1.y
	
	direction = point_direction(x,y,mouse_x,mouse_y)
	image_angle = direction
	
	if(direction>90&&direction<270)
	{
		image_yscale = -1
	}
	else
	{
		image_yscale = 1
	}
	
	
	if(shot&&mouse_check_button(mb_left))
	{
		instance_create_layer(x,y,"Paint",oPaintBullet).direction = direction
		
		shot = false

	}
	
	//add more weapons

	if(!shot)
	{
		timer++
	}

	if(timer>=30)
	{
		shot = true
		timer = 0
	}
}