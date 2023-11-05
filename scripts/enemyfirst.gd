extends Sprite2D

var coin_scene = preload("res://scenes/coin.tscn")

@export var health := 10
@export var max_health := health
@export var min_health := 0


signal die

func _ready() -> void:
	$ProgressBar.max_value = max_health
	$ProgressBar.min_value = min_health
	$ProgressBar.value = health


func take_damage(damage : int) -> void:
	health -= damage
	$ProgressBar.value = health
	if health == 0:
		
		drop_loot()
		queue_free()
		
		emit_signal('die')
		

func drop_loot():
	var coin = coin_scene.instantiate()
#	coin.global_position = global_position
	
	get_parent().add_child(coin)
