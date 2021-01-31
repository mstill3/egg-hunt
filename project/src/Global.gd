extends Node

var EGGS_FOUND_IN_LEVEL := 0

var eggs_collected := []
var difficulty := 1
var music_volume := 1
var sfx_volume := 1

var LEVEL_ONE_TIME = 15
var LEVEL_TWO_TIME = 15
var LEVEL_THREE_TIME = 15

var LEVEL_ONE_NUM_EGGS = 3
var LEVEL_TWO_NUM_EGGS = 3
var LEVEL_THREE_NUM_EGGS = 5


onready var _button_sound := $ButtonSound

func play_button_sound():
	_button_sound.play()
	
	
func collect(egg_id: String) -> void:
#	 TODO set check
	eggs_collected.append(egg_id)
	EGGS_FOUND_IN_LEVEL += 1
	
