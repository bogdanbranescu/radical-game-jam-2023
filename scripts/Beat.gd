extends TextureRect


var speed = 60


func _ready():
	pass # Replace with function body.


func _process(delta):
	rect_position.y += delta * speed

	if rect_position.y > 146:
		queue_free()