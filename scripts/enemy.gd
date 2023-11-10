extends Area2D

@export var health_enemy: int = 100
@export var damage_enemy: int = 5
@export var damage_speed: int = 1

var player_attack = Player.player_damage
var timer = damage_speed
var can_attack = true

@onready var scene = get_tree().current_scene.get_scene_file_path()
@onready var enemy_health_text = $HealtCount


func _ready():
	print(scene)
	enemy_health_text.text = "Health " + str(health_enemy)
	print_debug(Player.player_health)


func _physics_process(delta):
	update_attack_state(delta)
	if can_attack:
		attack()
	
	if Player.player_health <= 0:
		Player.player_health = 0		 
		get_tree().change_scene_to_file("res://scenes/game_end_scene.tscn")		
	print_debug(Player.player_health)
	
func attack():
	Player.player_health -= damage_enemy


func update_attack_state(delta):
	if timer <= 0:
		can_attack = true
		timer = damage_speed
	else:
		can_attack = false
		timer -= delta		
		

func _on_button_pressed():
	health_enemy -= player_attack
	enemy_health_text.text = "Health " + str(health_enemy)
	update_enemy_alive_state()

func update_enemy_alive_state():
	if health_enemy <= 0:
		Counter.count_wave += 1
		get_tree().change_scene_to_file(scene)
	
