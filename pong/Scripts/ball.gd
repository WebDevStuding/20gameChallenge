extends CharacterBody2D

const SPEED = 500
const MAX_SPEED = 600
var rng = RandomNumberGenerator.new()
@onready var vel := Vector2.ZERO
var dir =Vector2.ZERO

func _ready() -> void:
	while true:
		dir = startball()
		if dir and dir != Vector2.ZERO:
			break
	vel = dir*SPEED

func _physics_process(delta: float) -> void:
	var coll_info = move_and_collide(vel*delta)
	
	if coll_info:
		vel = vel.bounce(coll_info.get_normal())
		lerp(vel,vel,1)
	
func rand_numb(min_limt,max_limit)->Vector2:
	var value =Vector2(rng.randf_range(min_limt,max_limit),rng.randf_range(min_limt,max_limit)).normalized()
	return value

func startball():
	return rand_numb(-0.60,0.60)
