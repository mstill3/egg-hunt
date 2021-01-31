extends Node

func get_random_id() -> String:
#	var egg_ids = []
	return randomly_placed_egg_ids[randi() % randomly_placed_egg_ids.size()]

const randomly_placed_egg_ids := [
	'apple',
	'blank',
	'blue',
	'bumble',
	'circles',
	'colored',
	'dino',
	'facebook',
	'flave',
	'frown',
	'ggj',
	'godot',
	'heart',
	'nike',
	'piggy',
	'red_yellow',
	'sea_swirl',
	'smile',
	'snap',
	'spotify',
	'star',
	'sunset',
	'towson',
	'yellow_blue_flower',
	'youtube'
]

#const hard_placed_egg_ids := flower sun welcome brick rainbow

const all_egg_ids := [
	'apple',
	'blank',
	'blue',
	'brick',
	'bumble',
	'circles',
	'colored',
	'dino',
	'facebook',
	'flave',
	'flower',
	'frown',
	'ggj',
	'godot',
	'heart',
	'nike',
	'piggy',
	'rainbow',
	'red_yellow',
	'sea_swirl',
	'smile',
	'snap',
	'spotify',
	'star',
	'sunset',
	'sun',
	'towson',
	'welcome',
	'yellow_blue_flower',
	'youtube'
]
