extends Area2D

signal goal

func _ready() -> void:
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	emit_signal("goal")
	body.queue_free()
	pass
