extends Node2D

onready var world1 = preload("res://Scenes//Worlds/World1.tscn")
onready var world2 = preload("res://Scenes//Worlds/World2.tscn")
onready var world3 = preload("res://Scenes//Worlds/World3.tscn")
onready var world4 = preload("res://Scenes//Worlds/World4.tscn")

func _ready():
	InstanceScene(world1)
	#InstanceScene(world2)
	var instance_scene = world2.instance()
	add_child(instance_scene)
	instance_scene.modulate
	InstanceScene(world3)
	InstanceScene(world4)
	return

func InstanceScene(scene):
	var instance_scene = scene.instance()
	add_child(instance_scene)
