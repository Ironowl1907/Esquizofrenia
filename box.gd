extends Area2D

func _on_area_entered(area):
	area.pos.x = self.global_position.x
	area.pos.y = self.global_position.y
