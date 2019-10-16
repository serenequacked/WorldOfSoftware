extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	return

func zoom_in():
	get_node("WorldCamera").zoom_in(position - get_node("WorldCamera").get_camera_position())