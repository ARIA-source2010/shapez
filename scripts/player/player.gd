extends CharacterBody2D

const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	
	#
	if Input.is_action_just_pressed("ctrl"):
		GlobalHealth.damage_player(1)
		print(GlobalHealth.current_hp)
	#
	
	look_at(get_global_mouse_position())
	
	var directiony := Input.get_axis("w", "s")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	var directionx := Input.get_axis("a", "d")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
