extends CharacterBody2D

var speed = 100

func _physics_process(delta: float) -> void:
	var playerPosition = Global.playerPosition
	
	var vec_to_player = Global.playerPosition - global_position
	vec_to_player = vec_to_player.normalized()
	global_rotation = atan2(vec_to_player.y, vec_to_player.x)
	move_and_collide(vec_to_player * speed * delta)
