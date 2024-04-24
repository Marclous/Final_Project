#macro TEXT new TextAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction

function DialogueAction() constructor {
	act = function(){ }
}

function TextAction(_text, _result=0) : DialogueAction() constructor {
	text = _text
	result = _result
	act = function(textbox) {
		textbox.setText(text)
		textbox.setRoom(result)
	}
}

function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text
	
	options =  []
	for(var i = 1; i < argument_count; i++) array_push(options, argument[i])
		
	act = function(textbox) {
		textbox.setText(text)
		textbox.options = options
		textbox.option_count = array_length(options)
		textbox.current_option = 0
	}
	
}

function OptionAction(_text, _choice = 0,_time = 0,_topic = noone,_result=0): DialogueAction() constructor {
	text = _text
	topic = _topic
	result = _result
	time = _time
	choice = _choice
	act = function(textbox) {
		textbox.setRoom(result)
		textbox.setTime(time)
		textbox.getChoice(choice)
		textbox.setTopic(topic)
		
	}
}

function GotoAction(_topic): DialogueAction() constructor {
	topic = _topic
	
	act = function(textbox) {
		textbox.setTopic(topic)
	}
}