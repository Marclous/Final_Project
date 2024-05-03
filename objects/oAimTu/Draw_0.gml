draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var text_w_half = string_width(text)/2
var text_h_half = string_height(text)/2

if textfade > 0 {
	draw_set_font(fn_tutorial)
	draw_set_alpha(textfade/textfade_max)
	draw_set_color(c_white)

	draw_text(x,y-text_y+16,text)

}

draw_set_alpha(1)



