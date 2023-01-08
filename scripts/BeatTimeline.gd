extends TextureRect


onready var beat = load("res://scenes/Beat.tscn")


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass

func _on_TickTimer_timeout():
	var new_beat = beat.instance()
	add_child(new_beat)