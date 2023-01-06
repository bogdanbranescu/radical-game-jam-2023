extends Sprite


var line = 0
var direction = Vector2.ZERO
var timeline_offset = 8


func _ready():
	pass # Replace with function body.


func get_input():
	direction = Vector2.ZERO

	if Input.is_action_just_pressed("ui_down"):
		direction = Vector2(0, 1)
	elif Input.is_action_just_pressed("ui_up"):
		direction = Vector2(0, -1)


func _process(delta):
	get_input()

	if direction != Vector2.ZERO:
		line = clamp(line + direction.y, 0, 2)
	
	position.y = timeline_offset + 48 * line
