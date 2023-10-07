extends CharacterBody2D


var speed: float = 0
var pos: Vector2 = Vector2.ZERO
const maxspeed: int = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Game Ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.y += speed
	position = pos
	if (speed < maxspeed):
		speed += -0.07
