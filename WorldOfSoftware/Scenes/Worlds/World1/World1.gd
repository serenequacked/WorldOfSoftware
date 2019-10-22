extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_World1Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_node("World1Area/World/WorldCamera").current = true
			get_node("World1Area/World").zoom_in()
			$Timer.set_wait_time(0.3)
			$Timer.start() 
			yield($Timer, "timeout") 
			get_tree().change_scene("res://Scenes//Worlds//World1//World1Levels.tscn")
