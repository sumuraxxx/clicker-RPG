extends Node2D

var level_0_scene := preload("res://scenes/levelfirst.tscn")

var locations := [level_0_scene]

@export var hub_location : PackedScene
var HUB : Node


func _ready() -> void:
	HUB = hub_location.instantiate()
	add_child(HUB)
	for child in get_children():
		if child.has_signal('change_scene_to_loc'):
			child.connect("change_scene_to_loc",go_to_level)
			


func go_to_level(level_id : int) -> void:
	var level = locations[level_id].instantiate()
	add_child(level)
	level.connect('back_to_hub', back_to_hub)
	print('boop')
	
func back_to_hub() -> void:
	HUB = hub_location.instantiate()
	add_child(HUB)
