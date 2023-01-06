extends Node2D


onready var note = load("res://scenes/Note.tscn")

onready var timer = $TickTimer
onready var sfx_player = $TickSfxPlayer
onready var timeline = $Timeline


func _ready():
	timer.set_wait_time(60.0 / globals.bpm)
	timer.set_one_shot(false)
	timer.connect("timeout", self, "tick")
	timer.start()


func tick():
	sfx_player.play()

	randomize()
	generate_note(randi() % 3)


func generate_note(line):
	var new_note = note.instance()
	new_note.line = line
	timeline.add_child(new_note)


# func _process(delta):
# 	pass
