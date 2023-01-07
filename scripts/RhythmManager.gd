extends Node2D


onready var note = load("res://scenes/Note.tscn")

onready var timer = $TickTimer
onready var sfx_player = $TickSfxPlayer

var prev_beat = OS.get_ticks_msec()
var tick_duration = 60.0 / globals.bpm

var momentum = 0


func _ready():
	timer.set_wait_time(tick_duration)
	timer.set_one_shot(false)
	timer.connect("timeout", self, "tick")
	timer.start()


func tick():
	sfx_player.play()
	prev_beat = OS.get_ticks_msec()

	randomize()
	#generate_note(randi() % 3)


func generate_note(line):
	var new_note = note.instance()
	new_note.line = line


func _process(delta):
	momentum = clamp(momentum - globals.depletion_rate * delta, 0, 100)


func _on_Player_moved(move_timestamp):
	var beat_difference = move_timestamp - prev_beat

	var earliest_upcoming_allowed = prev_beat + (1 - globals.beat_tolerance) * tick_duration * 1000
	var latest_allowed = prev_beat + globals.beat_tolerance * tick_duration * 1000

	print(latest_allowed, "\t", move_timestamp, "\t", earliest_upcoming_allowed)

	if move_timestamp < latest_allowed or move_timestamp > earliest_upcoming_allowed:
		print(beat_difference)
		momentum += 10
