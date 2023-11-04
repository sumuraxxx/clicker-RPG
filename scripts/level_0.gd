extends Sprite2D

var enemy_0_scene = preload("res://scenes/enemyfirst.tscn")

signal back_to_hub

func _ready() -> void:
	spawn_enemy()
	

func _on_button_pressed() -> void:
	emit_signal("back_to_hub")
	queue_free()
	
func _on_attack_pressed() -> void:
	for child in $EnemySpawn.get_children():
		child.take_damage(5)

func spawn_enemy() -> void:
	var enemy = enemy_0_scene.instantiate()
	$EnemySpawn.add_child(enemy)
	



