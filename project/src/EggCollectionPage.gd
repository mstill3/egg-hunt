extends Control


func _on_BackButton_pressed():
	Global.play_button_sound()
	var _ignored := get_tree().change_scene("res://src/MainMenu.tscn")

#func _physics_process(delta):
#	print(Global.eggs_collected)

var outlined_egg_image = load("res://assets/images/eggs/outline_egg.png")

func _ready():
	set_egg_count_label(Global.get_num_eggs_collected(), Global.NUM_EGGS)
	if not Global.eggs_collected.has('apple'):
		$Eggs/AppleEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('blank'):
		$Eggs/BlankEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('blue'):
		$Eggs/BlueEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('brick'):
		$Eggs/BrickEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('bumble'):
		$Eggs/BumbleEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('circles'):
		$Eggs/CirclesEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('colored'):
		$Eggs/ColoredEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('dino'):
		$Eggs/DinoEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('facebook'):
		$Eggs/FacebookEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('flave'):
		$Eggs/FlaveEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('flower'):
		$Eggs/FlowerEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('frown'):
		$Eggs/FrownEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('ggj'):
		$Eggs/GGJEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('godot'):
		$Eggs/GodotEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('heart'):
		$Eggs/HeartEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('nike'):
		$Eggs/NikeEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('piggy'):
		$Eggs/PiggyEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('rainbow'):
		$Eggs/RainbowEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('red_yellow'):
		$Eggs/RedYellowEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('sea_swirl'):
		$Eggs/SeaSwirlEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('smile'):
		$Eggs/SmileEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('snap'):
		$Eggs/SnapEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('spotify'):
		$Eggs/SpotifyEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('star'):
		$Eggs/StarEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('sunset'):
		$Eggs/SunsetEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('sun'):
		$Eggs/SunEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('towson'):
		$Eggs/TowsonEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('welcome'):
		$Eggs/WelcomeEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('yellow_blue_flower'):
		$Eggs/YellowBlueFlowerEgg.texture = outlined_egg_image
	if not Global.eggs_collected.has('youtube'):
		$Eggs/YoutubeEgg.texture = outlined_egg_image


func set_egg_count_label(current: int, total: int) -> void:
	$EggCountLabel.text = str(current) + "/" + str(total)
