extends Panel
var npc_dialogue = get_node("NpcDialogue")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	echo("da")
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			npc_dialogue.set_visible_characters(0)
			npc_dialogue.set_bbcode("SELECT WORLD WORLWDORWLOWROWLDWRODLWROLD")