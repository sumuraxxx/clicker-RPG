extends Node2D

@onready var label = $CanvasLayer/Label

func _ready():
	Player.health_recovary()
	label.text = "wwave: " + str(Counter.count_wave)
