extends Node

var eggs_collected := []
var difficulty := 1
var music_volume := 1
var sfx_volume := 1

onready var _button_sound := $ButtonSound

func play_button_sound():
	_button_sound.play()
