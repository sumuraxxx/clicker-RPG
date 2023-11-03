extends Sprite2D

signal change_scene_to_loc(loc : int)

func _on_button_pressed() -> void:
	$CityMap.visible = not $CityMap.visible


func _on_city_map_change_loc_to(loc) -> void:
	emit_signal("change_scene_to_loc", loc)
	queue_free()
