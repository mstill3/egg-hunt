extends Node

var duck_is_dead := false
var wave := 1

onready var _button_sound := $ButtonSound

func play_button_sound():
	_button_sound.play()
