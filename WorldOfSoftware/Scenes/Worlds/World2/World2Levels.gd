extends Node2D
onready var level_selection = get_node("LevelSelection")

func _ready():
	level_selection.set_worldpath("res://Scenes//Worlds//World2//")
	level_selection.set_levelpath("world2data.json")
	level_selection.set_icon("res://Assets//Worlds//round.png")
	level_selection.display_levels()

