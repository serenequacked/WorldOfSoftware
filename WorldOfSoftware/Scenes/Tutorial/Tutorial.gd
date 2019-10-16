extends Node2D

onready var dialogue = preload("res://Scenes//Dialouge/Dialogue.tscn")
onready var world1 = preload("res://Scenes//Worlds/World1.tscn")
onready var world2 = preload("res://Scenes//Worlds/World2.tscn")
onready var world3 = preload("res://Scenes//Worlds/World3.tscn")
onready var world4 = preload("res://Scenes//Worlds/World4.tscn")

func _ready():
	InstanceScene(dialogue)
	InstanceScene(world1)
	InstanceLockedWorld(world2)
	InstanceLockedWorld(world3)
	InstanceLockedWorld(world4)
	return

func InstanceScene(scene):
	var instance_scene = scene.instance()
	add_child(instance_scene)

func InstanceLockedWorld(scene):
	var instance_scene = scene.instance()
	instance_scene.modulate = Color(0, 0, 0, 1)

	add_child(instance_scene)

func _on_BacKButton_pressed():
	 get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")





