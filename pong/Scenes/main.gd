extends Node2D

@onready var spawn_pos = $Marker2D
const BALL_SCENE =preload("res://Scenes/ball.tscn")

func _ready() -> void:
	var ball_instance = BALL_SCENE.instantiate()
	spawn_pos.add_child(ball_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
