extends CharacterBody2D
var speed = 200

func _physics_process(delta: float) -> void:
	var dirY := Input.get_axis("W", "S")
	var dirX := Input.get_axis("A", "D")
	
	if dirY != 0:
		velocity.y = speed * dirY
	else:
		velocity.y = 0
	
	if dirX != 0:
		velocity.x = speed * dirX
	else:
		velocity.x = 0
	
	move_and_slide()
	
	
	Global.playerPosition = global_position
	
