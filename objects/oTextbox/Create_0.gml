//Input
confirm_key = vk_space
up_key = vk_up
down_key = vk_down
max_input_delay = 5
input_delay = max_input_delay


//Poition
margin = 16
padding = 8
width = display_get_gui_width() - margin * 2 - 250
height = sprite_height

x = (display_get_gui_width() - width)
y = display_get_gui_height() - height - margin


//Portrait
portrait_x = -250
portrait_y = 0

//Speaker
speaker_x = -200
speaker_y = 0
speaker_font = fn_name
speaker_color = #464633

//Text
text_font = fnt_Text
text_color = c_black
text_speed = 0.2
text_x = padding
text_y = padding
text_width = width - padding * 2

option_x = padding
option_y = padding * 3
option_spacing = 60
option_selection_indent =24
option_width = 300
option_height = 40
option_text_x = 20
option_text_color = c_black

actions = []
current_action = -1

text = ""
text_progress = 0
text_length = 0

options = []
current_option = 0
option_count = 0
setEnd = 0

portrait_sprite = -1
portrait_width = sprite_get_width(sPortrait)
portrait_height = sprite_get_height(sPortrait)
portrait_side = PORTRAIT_SIDE.LEFT

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = ""
speaker_width = sprite_get_width(sName)
speaker_height = sprite_get_height(sName)

//Methods
//Start a conversation
setTopic = function(topic) {
	actions = global.topics[$ topic]
	current_action = -1
	
	next()
}

//Next sentence
next = function() {
	current_action++
	if (current_action >= array_length(actions)) {
		instance_destroy()
	}
	else {
		actions[current_action].act(id)
	}
}

//Display text
setText = function(newText) {
	text= newText
	text_length = string_length(newText)
	text_progress = 0
}

setRoom = function(roomNum) {
	if roomNum == 1 {
		room_goto(rm_tutorial2)
	}else if roomNum == 2{
		room_goto(rm_tutorial3)
	}else if roomNum == 3{
		room_goto(rm_tutorial4)
	}else if roomNum == 4{
		room_goto(rm_level5)
	}else if roomNum == 5{
		room_goto(rm_finale)
	}else if roomNum == 6 {
		room_goto(rm_tutorial1)
	}else if roomNum == 9 {
		oWaxGod.visible = false
	}else if roomNum == 10 {
		oFinalBackground.image = 1
	}
}


getChoice = function(choice) {
	if choice = 1 {
		global.choice += 1
	}else if choice = 2 {
		global.choice += 2
	}
}