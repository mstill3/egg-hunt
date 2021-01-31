extends Node

var EGGS_FOUND_IN_LEVEL := 0

var eggs_collected := []
var difficulty := 1
var music_volume := true
var sfx_volume := true

var LEVEL_ONE_TIME = 10
var LEVEL_TWO_TIME = 8
var LEVEL_THREE_TIME = 5

var LEVEL_ONE_NUM_EGGS = 3
var LEVEL_TWO_NUM_EGGS = 3
var LEVEL_THREE_NUM_EGGS = 5

var NUM_EGGS = 30

onready var _button_sound := $ButtonSound

func play_button_sound():
	if sfx_volume:
		_button_sound.play()
	
	
func collect(egg_id: String) -> void:
	if not eggs_collected.has(egg_id):
		eggs_collected.append(egg_id)
	EGGS_FOUND_IN_LEVEL += 1
	
func get_num_eggs_collected() -> int:
	return eggs_collected.size()
