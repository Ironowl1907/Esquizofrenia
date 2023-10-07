extends Area2D

var rot = randf() * 90
var speed = randi() % 10 * 100

func _process(delta: float) -> void:
	position += Vector2.LEFT.rotated(rot) * delta * speed
