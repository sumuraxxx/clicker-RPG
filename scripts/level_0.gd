extends Sprite2D

signal back_to_hub

func _on_button_pressed() -> void:
	emit_signal("back_to_hub")
	queue_free()
