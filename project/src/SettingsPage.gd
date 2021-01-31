extends Control

func _ready():
	$MusicCheckbox.pressed = Global.music_volume
	$SfxCheckbox.pressed = Global.sfx_volume

func _on_BackButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")



func _on_MusicCheckbox_pressed():
	Global.play_button_sound()
	Global.music_volume = not Global.music_volume
	
func _on_SfxCheckbox_pressed():
	Global.play_button_sound()
	Global.sfx_volume = not Global.sfx_volume
