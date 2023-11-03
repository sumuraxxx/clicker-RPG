extends Sprite2D

signal change_loc_to(loc : int)

func _on_button_pressed() -> void:
	emit_signal('change_loc_to', 0)


func _on_close_map_pressed() -> void:
	visible = not visible
