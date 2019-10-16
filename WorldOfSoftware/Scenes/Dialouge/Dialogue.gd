extends Control
onready var npc_dialogue = get_node("DialoguePanel/NpcDialogue")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	npc_dialogue.set_visible_characters(0)

func _on_TextTimer_timeout():
	npc_dialogue.set_visible_characters(npc_dialogue.get_visible_characters()+1)

func NextDialogue(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			npc_dialogue.set_visible_characters(0)
			npc_dialogue.set_bbcode("SELECT WORLD WORLWDORWLOWROWLDWRODLWROLD")


func _on_DialoguePanel_gui_input(event):
	NextDialogue(event)


func _on_NpcDialogue_gui_input(event):
	NextDialogue(event)

func _on_NpcName_gui_input(event):
	NextDialogue(event)