extends Area2D


onready var hazard_animation = $AnimatedSprite

var damage_frames = [4, 5, 6]


func _ready():
	pass # Replace with function body.


#func _process(delta):
#	pass

func _on_Hazard_body_entered(_body):
	if hazard_animation.frame in damage_frames:
		print("DAMAGE!")
		queue_free()

func _on_AnimatedSprite_animation_finished():
	queue_free()