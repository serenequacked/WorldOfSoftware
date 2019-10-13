extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var char1 = get_node("Char1Area2D/Char1")
onready var char2 = get_node("Char2Area2D/Char2")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func ChangeScene():
	yield(get_tree().create_timer(1.2), "timeout")
	get_tree().change_scene("res://World.tscn")

func _on_Char1Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			char1.play("jump")
			get_node("Char2Area2D/Char2Collison").disabled = true
			ChangeScene()

	pass # Replace with function body.


func _on_Char2Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			char2.play("jump")
			get_node("Char1Area2D/Char1Collision").disabled = true
			ChangeScene()
	pass # Replace with function body.
