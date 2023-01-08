extends Node


var bpm = 95
var beat_tolerance = 0.1

var depletion_rate = 5

var cell_size = 32

var song_configs = [
	{
		"file": "res://audio/music/polychrombo - Pygmy Marmoset.wav",
		"bpm": 95,
		"harmony": [0, 2526, 3474, 4737, 7579, 8526, 9789, 11842, 12316, 12632, 14211, 14842, 15158, 16105],
		"melody": [0, 621, 1862, 2069, 2483, 2897, 3310, 3931, 5172, 5379, 5793, 6207, 6621, 7241, 8483, 8690, 9103, 9517, 9931, 11585]
	},
	{
		"file": "res://audio/music/polychrombo - Mandrill.wav",
		"bpm": 145,
		"harmony": [],
		"melody": [0, 414, 621, 1862, 2069, 2483, 2897, 3310, 3724, 3931, 5172, 5379, 5793, 6207, 6621, 7034, 7241, 8483, 8690, 9103, 9517, 9931, 10345, 10552, 11172, 11793, 12207, 12414]
	},
]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

