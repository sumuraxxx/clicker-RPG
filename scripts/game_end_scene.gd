extends Control


func _on_button_pressed():
	Counter.count_wave = 0
	Player.health_recovary()
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")


func _on_button_2_pressed():
	Player.health_recovary()
	get_tree().change_scene_to_file("res://scenes/global_map.tscn")
