extends Area2D
on ready var camera = get_node("World1/Camera2D")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Camera2D.zoom_in(position - $Camera2D.get_camera_position())