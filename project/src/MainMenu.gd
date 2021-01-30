extends Control


func _on_PlayButton_pressed():
	var _ignored := get_tree().change_scene("res://src/LevelOneTitleScreen.tscn")


func _on_SettingsButton_pressed():
	var _ignored := get_tree().change_scene("res://src/SettingsPage.tscn")


func _on_AboutButton_pressed():
	var _ignored := get_tree().change_scene("res://src/AboutPage.tscn")


func _on_EggCollectionButton_pressed():
	var _ignored := get_tree().change_scene("res://src/EggCollectionPage.tscn")
