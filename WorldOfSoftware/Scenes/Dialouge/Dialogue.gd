extends Control
onready var npc_dialogue = get_node("DialoguePanel/NpcDialogue")
onready var npc_name = get_node("DialoguePanel/NpcName")
onready var npc_sprite = get_node("DialoguePanel/NpcSprite")
onready var json = preload("res://Utils//LoadJson.gd").new()

var dialogue_path = "res://Dialogues//"
var sprite_path = "res://Sprites//"
var sprite_type =".png"
var data
var count =1
var file

func _ready():
	return

func set_file(file_name):
	file = file_name

func display_dialogue():
	data = json.load_file(dialogue_path+file)
	display_npc()

func display_npc():
	var name = data[String(count)].name
	var dialogue = data[String(count)].dialogue
	var sprite = load(sprite_path + name + "//" +data[String(count)].sprite + sprite_type)
	
	npc_dialogue.set_visible_characters(0)
	npc_dialogue.set_bbcode(dialogue)
	npc_name.set_bbcode(name)
	npc_sprite.set_texture(sprite)
	count+=1

func _on_TextTimer_timeout():
	npc_dialogue.set_visible_characters(npc_dialogue.get_visible_characters()+1)

func next_dialogue(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if(count<=data.size()):
				if(count == data.size()):
					get_node("DialoguePanel/Next").hide()
				display_npc()


func _on_DialoguePanel_gui_input(event):
	next_dialogue(event)


func _on_NpcDialogue_gui_input(event):
	next_dialogue(event)

func _on_NpcName_gui_input(event):
	next_dialogue(event)

func _on_Next_gui_input(event):
	next_dialogue(event)
