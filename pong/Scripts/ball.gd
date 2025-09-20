extends CharacterBody2D

const SPEED = 500
const MAX_SPEED = 600
var rng = RandomNumberGenerator.new()
@onready var vel := Vector2.ZERO
var dir =Vector2.ZERO

func _ready() -> void:
	dir = startball()
	vel = dir*SPEED

func _physics_process(delta: float) -> void:
	var coll_info = move_and_collide(vel*delta)
	
	if coll_info:
		vel = vel.bounce(coll_info.get_normal())
		lerp(vel,vel,1)
	
func rand_numb(min_lim,max_lim)->Vector2:
	var rand = Vector2.ZERO
	while true:
		rand.x = rng.randi_range(-1,1)
		rand.y = rng.randf_range(-0.6,0.6)
		if rand.x != 0 and rand.y != 0:
			break
		
	return rand

func startball():
	return rand_numb(-0.6,0.6)
