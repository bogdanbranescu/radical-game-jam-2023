extends Node2D


onready var timer = $TickTimer
onready var sfx_player = $TickSfxPlayer


func _ready():
	timer.set_wait_time(60.0 / globals.bpm)
	timer.set_one_shot(false)
	timer.connect("timeout", self, "tick")
	timer.start()


func tick():
	sfx_player.play()

# func _process(delta):
# 	pass
