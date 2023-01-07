extends Sprite


signal moved(at_timestamp)

var line = 0
var direction = Vector2.ZERO


func _ready():
	pass # Replace with function body.


func get_input():
	direction = Vector2.ZERO

	if Input.is_action_just_pressed("ui_right"):
		direction = Vector2(1, 0)
	elif Input.is_action_just_pressed("ui_left"):
		direction = Vector2(-1, 0)
	elif Input.is_action_just_pressed("ui_down"):
		direction = Vector2(0, 1)
	elif Input.is_action_just_pressed("ui_up"):
		direction = Vector2(0, -1)


func _process(_delta):
	get_input()

	if direction != Vector2.ZERO:
		var timestamp = OS.get_ticks_msec()
		emit_signal("moved", timestamp)
	
	position += direction * globals.cell_size
