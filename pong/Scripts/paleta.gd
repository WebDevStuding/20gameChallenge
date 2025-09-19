extends CharacterBody2D
class_name Paleta

@export var speed = 300

signal changed_mesh(new_mesh)

var mesh = null : 
	get:
		return mesh
	set (value):
		mesh = value 

var collision = null :
	get:
		return collision
	set(col):
		collision = col

func _physics_process(delta: float) -> void:
	pass
