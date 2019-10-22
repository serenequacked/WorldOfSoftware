#extends "res://Scenes//Worlds//WorldLevels.gd"
extends Node2D
onready var tut = preload("res://Utils//LoadJson.gd").new()
onready var level_selection = get_node("LevelSelection")
onready var npc_dialogue = get_node("Dialogue")

var file_name = "tutorialselectlevel.json"

func _ready():
	var tut_status = tut.get_status()
	if tut_status == false:
		npc_dialogue.show()
		npc_dialogue.set_file(file_name)
		npc_dialogue.display_dialogue()
	else:
		level_selection.set_worldpath("res://Scenes//Worlds//World1//")
		level_selection.set_levelpath("world1data.json")
		level_selection.set_icon("res://Assets//Worlds//round.png")
		level_selection.display_levels()

