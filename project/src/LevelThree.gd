extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseScreen.visible = false
	Global.EGGS_FOUND_IN_LEVEL = 0
	$Timer.wait_time = Global.LEVEL_THREE_TIME
	$Timer.start()


func _physics_process(delta):
	if Global.EGGS_FOUND_IN_LEVEL >= Global.LEVEL_THREE_NUM_EGGS:
		Jukebox.play_menu_track()
		_switch_next_scene()
	$HUD.set_egg_count_label(Global.EGGS_FOUND_IN_LEVEL, Global.LEVEL_THREE_NUM_EGGS)
	$HUD.set_time_label($Timer.get_time_left())


func _on_Timer_timeout():
	Jukebox.play_menu_track()
	_switch_menu_scene()


func _switch_next_scene():
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")
	
func _switch_menu_scene():
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")
	


func _on_PauseButton_pressed():
	Global.play_button_sound()
	$PauseScreen.visible = true
	$Timer.paused = true


func _on_PauseScreen_on_PlayButton_pressed():
	$PauseScreen.visible = false
	$Timer.paused = false
