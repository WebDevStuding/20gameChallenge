extends AnimatableBody2D

"""
	[] Get the ball
	[] If ball is higher than enemy. Move up
	[] If ball is lower than enemy. Move down
"""
const MAX_SPEED = 400
const ACC = 40
const FRI = 20

var velocity = Vector2.ZERO
var ball :
	get():
		return ball
	set(value):
		ball = value
func move_updown(dir) ->float:
	if dir== 0:
		return move_toward(velocity.y,0,FRI)
	return move_toward(velocity.y,MAX_SPEED*dir, ACC)

func ctrl_movement() -> float:
	if !ball or ball.position.y == self.position.y:
		return move_updown(0)
	return move_updown(ball.position.y)
	
func _physics_process(delta: float) -> void:
	velocity.y = ctrl_movement()

	move_and_collide(velocity * delta)
