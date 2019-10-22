extends Node2D
onready var tut = preload("res://Utils//LoadJson.gd").new()
onready var npc_dialogue = get_node("Dialogue")

var file_name = "tutorial.json"

func _ready():
	var tut_status = tut.get_status()
	#if user has no records of World1 level 1 
	#Disable all worlds other than world 1 and start tutorial dialogue
	if tut_status == false:
		get_node("World2Root").disable_world()
		get_node("World3Root").disable_world()
		get_node("World4Root").disable_world()
		npc_dialogue.show()
		npc_dialogue.set_file(file_name)
		npc_dialogue.display_dialogue()

