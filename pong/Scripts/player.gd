extends AnimatableBody2D
const MAX_SPEED = 400
const ACC = 40
const FRI = 20

var velocity = Vector2.ZERO
@onready var mesh = get_node("MeshInstance2D")
@onready var collision = get_node("CollisionShape2D")

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("down", "up") * -1
	if direction == 0:
		velocity.y = move_toward(velocity.y, 0, FRI)
	else:
		velocity.y = move_toward(velocity.y,direction*MAX_SPEED,ACC)
	
	move_and_collide(velocity*delta)
