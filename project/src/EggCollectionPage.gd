extends Control


func _on_BackButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")
