extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.EGGS_FOUND_IN_LEVEL = 0
	$Timer.wait_time = Global.LEVEL_TWO_TIME
	$Timer.start()
	for num in range(0, Global.LEVEL_TWO_NUM_EGGS):
		var NewEgg = preload("res://src/Egg.tscn").instance()
		NewEgg.ID = EggHandler.get_random_id()
		NewEgg.position.x = randi() % 1024
		NewEgg.position.y = randi() % 600
		add_child(NewEgg)

func _physics_process(delta):
	if Global.EGGS_FOUND_IN_LEVEL >= Global.LEVEL_TWO_NUM_EGGS:
		_switch_next_scene()
		
	$HUD.set_egg_count_label(Global.EGGS_FOUND_IN_LEVEL, Global.LEVEL_TWO_NUM_EGGS)
	$HUD.set_time_label($Timer.get_time_left())


func _on_Timer_timeout():
	_switch_menu_scene()


func _switch_next_scene():
	var _ignored := get_tree().change_scene("res://src/LevelThreeTitleScreen.tscn")
	
func _switch_menu_scene():
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")
