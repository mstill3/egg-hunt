class_name Egg
extends Node2D

export var ID: String

var touching: bool = false

func _ready():
	$Sprite.texture = load("res://assets/images/eggs/" + ID + "_egg.png")

func hasBeenFound(event) -> bool:
	if event is InputEventKey and event.is_pressed() and touching:
		return true
	elif event is InputEventMouseButton and event.is_pressed() and touching:
		return true
	else:
		return false
		
func _input(event):
	if hasBeenFound(event):
		Global.collect(ID)
		queue_free()


func _on_ClickableArea_mouse_entered():
	touching = true


func _on_ClickableArea_mouse_exited():
	touching = false
