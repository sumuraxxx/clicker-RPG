extends Sprite2D

@export var health := 10
@export var max_health := health
@export var min_health := 0

func _ready() -> void:
	$ProgressBar.max_value = max_health
	$ProgressBar.min_value = min_health
	$ProgressBar.value = health


func take_damage(damage : int) -> void:
	health -= damage
	$ProgressBar.value = health
	if health == 0:
		queue_free()
		emit_signal('tree_exited')
