extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func disableCollison():
	get_node("World4Area/CollisionShape2D").disabled = true

func _on_World4Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_node("World4Area/World/WorldCamera").current = true
			get_node("World4Area/World").zoom_in()
			$Timer.set_wait_time(0.7)
			$Timer.start() 
			yield($Timer, "timeout") 
			get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")
