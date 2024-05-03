
if (place_meeting(x,y, oMaya) || place_meeting(x,y,oVenture)) && image_index = 0 {
	textfade = textfade_max
}else {
	textfade = max(0, textfade-1)
}

