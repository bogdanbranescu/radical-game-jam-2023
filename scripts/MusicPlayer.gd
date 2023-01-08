extends AudioStreamPlayer


var song_index = 0


func _ready():
	stream = load(globals.song_configs[song_index].file)
	play()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
