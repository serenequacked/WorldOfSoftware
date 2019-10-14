extends Node2D
onready var vbox = get_node("VBoxContainer")
onready var w1 = get_node("VBoxContainer/World1")
onready var w1_1 = get_node("VBoxContainer/World1/Sprite")
onready var w2 = get_node("VBoxContainer/World2")
onready var w2_1 = get_node("VBoxContainer/World2/Sprite")
onready var w3 = get_node("VBoxContainer/World3")
onready var w3_1 = get_node("VBoxContainer/World3/Sprite")
onready var w4 = get_node("VBoxContainer/World4")
onready var w4_1 = get_node("VBoxContainer/World4/Sprite")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	w2.modulate = Color( 0.34, 0.34, 0.34, 1 )
	w2_1.modulate = Color( 0.34, 0.34, 0.34, 1 )
	w3.modulate = Color( 0.34, 0.34, 0.34, 1 )
	w3_1.modulate = Color( 0.34, 0.34, 0.34, 1 )
	w4.modulate = Color( 0.34, 0.34, 0.34, 1 )
	w4_1.modulate = Color( 0.34, 0.34, 0.34, 1 )
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")
	pass # Replace with function body.
