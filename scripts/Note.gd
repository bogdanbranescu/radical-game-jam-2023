extends Area2D


var line = 0 setget _set_line
var timeline_offset = 24
var speed = 100


func _ready():
	pass # Replace with function body.


func _set_line(new_line):
	line = new_line
	position = Vector2(320, timeline_offset + 48 * line)


func _process(delta):
	position.x -= delta * speed
