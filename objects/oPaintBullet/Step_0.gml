if(timer<60)
{
	timer++
}
else
{
	instance_destroy()
}

surface_set_target(oPaint.surface1)
gpu_set_blendmode(bm_normal)
draw_set_color(c_blue)
draw_circle(x,y,12,false)

surface_reset_target()
surface_set_target(oPaint.surface2)
draw_surface(oPaint.surface1,0,0)
surface_reset_target()
