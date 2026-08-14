extends Node2D

var PLAYER = preload("res://player.tscn")
var ENEMY = preload("res://enemy.tscn")


func _ready() -> void:
	var player = PLAYER.instantiate()
	player.position = Vector2(250, 250)
	add_child(player)
	
	var enemy = ENEMY.instantiate()
	enemy.position = Vector2(500, 250)
	add_child(enemy)
