extends KinematicBody2D


signal moved(at_timestamp)

onready var sprite = $Sprite


func _ready():
	pass # Replace with function body.


func get_input() -> Vector2:
	var move_direction = Vector2.ZERO

	if Input.is_action_just_pressed("ui_right"):
		move_direction = Vector2(1, 0)
	elif Input.is_action_just_pressed("ui_left"):
		move_direction = Vector2(-1, 0)
	elif Input.is_action_just_pressed("ui_down"):
		move_direction = Vector2(0, 1)
	elif Input.is_action_just_pressed("ui_up"):
		move_direction = Vector2(0, -1)

	return move_direction;


func _process(_delta):
	var newMoveDir = get_input()

	if newMoveDir.x == -1:
		sprite.flip_h = true
	elif newMoveDir.x == 1:
		sprite.flip_h = false

	
	if newMoveDir != Vector2.ZERO:
		var timestamp = OS.get_ticks_msec()
		emit_signal("moved", timestamp)
		
		var newPosition = global_position + (newMoveDir * globals.cell_size);
	
		# print("player position: ", global_position);
	
		global_position.x = clamp(newPosition.x, 80, 208);
		global_position.y = clamp(newPosition.y, 8, 136);

		# print("newPosition", newPosition);
