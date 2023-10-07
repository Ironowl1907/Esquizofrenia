extends CharacterBody2D


var speed: float = 0
var pos: Vector2 = Vector2.ZERO
const maxspeed: float = -1000
var VelRot: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Game Ready")
	rotation_degrees = 180


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print (rotation_degrees)
	pos.y += speed * delta
	position = pos 
	if (speed > maxspeed):
		speed += -1
	if (Input.is_action_pressed("rotateRight")):
		VelRot += 1
	if (Input.is_action_pressed("rotateLeft")):
		VelRot -= 1
	
	rotation_degrees += VelRot
	VelRot -= 1
	
