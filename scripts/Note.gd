extends Area2D


var line = 0 setget _set_line
var speed = 100


func _ready():
	pass # Replace with function body.


func _set_line(new_line):
	line = new_line


func _process(delta):
	position.x -= delta * speed
