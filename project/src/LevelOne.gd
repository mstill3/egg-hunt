extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const NUM_EGGS_IN_LEVEL := 3
		
# Called when the node enters the scene tree for the first time.
func _ready():
	for num in range(0, NUM_EGGS_IN_LEVEL):
		var NewEgg = preload("res://src/Egg.tscn").instance()
#		NewEgg.prin()
		NewEgg.ID = EggHandler.get_random_id()
		NewEgg.position.x = randi() % 1024
		NewEgg.position.y = randi() % 600
		add_child(NewEgg)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var _ignored := get_tree().change_scene("res://src/LevelTwoTitleScreen.tscn")
