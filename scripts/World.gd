extends Node2D


onready var rhythm = $RhythmManager
onready var momentum_gauge = $CanvasLayer/UI/Gauge
onready var beat_indicator = $CanvasLayer/UI/Beat


func _ready():
	pass # Replace with function body.


func _process(_delta):
	momentum_gauge.value = rhythm.momentum
