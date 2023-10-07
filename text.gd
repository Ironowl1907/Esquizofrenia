extends Area2D

var pos = Vector2()

var can_grab = false
var grabbed_offset = Vector2()
 
func _ready():
	pos.x = global_position.x
	pos.y = global_position.y

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		can_grab = event.pressed
		
		if (!event.pressed):
			self.global_position = pos
		
		grabbed_offset = position - get_global_mouse_position()

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and can_grab:
		position = get_global_mouse_position() + grabbed_offset
