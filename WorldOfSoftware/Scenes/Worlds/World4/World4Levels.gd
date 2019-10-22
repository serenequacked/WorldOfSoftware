extends Node2D
onready var level_selection = get_node("LevelSelection")

func _ready():
	level_selection.set_worldpath("res://Scenes//Worlds//World4//")
	level_selection.set_levelpath("world4data.json")
	level_selection.set_icon("res://Assets//Worlds//redround.png")
	level_selection.display_levels()