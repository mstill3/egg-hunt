extends Control


func _on_Timer_timeout():
	var _ignored := get_tree().change_scene("res://src/LevelTwo.tscn")
