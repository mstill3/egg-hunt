extends Control


func set_egg_count_label(current: int, total: int) -> void:
	$EggCountLabel.text = str(current) + "/" + str(total)
	
func set_time_label(time: float) -> void:
	$TimeLabel.text = str(int(time))
