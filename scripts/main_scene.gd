extends Node2D

@onready var label = $CanvasLayer/Label

func _ready():
	label.text = "wwave: " + str(Counter.count_wave)
