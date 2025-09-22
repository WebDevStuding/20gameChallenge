extends Node2D
"""
[x] Hacer la paleta
[x] Hacer el area
[] Hacer el enemigo
[x] Hacer la pelota
[] Realizar los marcadores
[] Realizar los guardametas
"""
@onready var spawn_pos = $Marker2D
const BALL_SCENE =preload("res://Scenes/ball.tscn")
@onready var enemy = $"Player2"

func _ready() -> void:
	var ball_instance = BALL_SCENE.instantiate()
	spawn_pos.add_child(ball_instance)
	enemy.ball = ball_instance
