extends Control


func _on_button_pressed():
	Counter.count_wave = 0
	Player.player_health = Player.HEALTH
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
