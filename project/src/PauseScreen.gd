extends Control

signal on_PlayButton_pressed

func _on_PlayButton_pressed():
	Global.play_button_sound()
	emit_signal("on_PlayButton_pressed")


func _on_SettingsButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/SettingsPage.tscn")


func _on_MenuButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")
