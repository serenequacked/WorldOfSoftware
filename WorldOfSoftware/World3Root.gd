extends Node2D

func _ready():
	pass # Replace with function body.


func _on_World3Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_node("World3Area/World/WorldCamera").current = true
			get_node("World3Area/World").zoom_in()
