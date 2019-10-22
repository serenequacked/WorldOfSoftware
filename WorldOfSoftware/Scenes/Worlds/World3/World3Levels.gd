extends Node2D
onready var level_selection = get_node("LevelSelection")

func _ready():
	level_selection.set_worldpath("res://Scenes//Worlds//World3//")
	level_selection.set_levelpath("world3data.json")
	level_selection.display_levels()