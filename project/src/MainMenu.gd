extends Control


func _on_PlayButton_pressed():
	Global.play_button_sound()
	Jukebox.play_game_track()
	var _ignored := get_tree().change_scene("res://src/LevelOneTitleScreen.tscn")


func _on_SettingsButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/SettingsPage.tscn")


func _on_AboutButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/AboutPage.tscn")


func _on_EggCollectionButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/EggCollectionPage.tscn")
