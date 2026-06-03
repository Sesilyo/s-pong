# FILENAME: paddle_1.gd
extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# [1] get vertical input direction
	# -1 for up, +1 for down
	var direction := Input.get_axis("ui_up", "ui_down")
	
	# [2] apply movement only to y-axis velocity
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	# [3] lock x-axis movement
	velocity.x = 0
	
	# [4] move paddle via Godot's physics solver
	move_and_slide()
