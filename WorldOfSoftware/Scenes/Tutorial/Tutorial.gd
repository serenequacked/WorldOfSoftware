extends Node2D
onready var npc_dialogue = get_node("DialogueUI/NpcDialogue")
onready var back_button = get_node("Button")

func _ready():
	npc_dialogue.set_visible_characters(0)

func _on_TextTimer_timeout():
	npc_dialogue.set_visible_characters(npc_dialogue.get_visible_characters()+1)


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			npc_dialogue.set_visible_characters(0)
			npc_dialogue.set_bbcode("SELECT WORLD WORLWDORWLOWROWLDWRODLWROLD")


func _on_World1Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")


func _on_BackButton_pressed():
	 print ("Hello")
	 get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")
