extends Control
var file_name = "dialogue_1.json"
onready var dialogue = get_node("ColorRect/dialogue")
onready var npc_name = get_node("ColorRect/npc_name")
onready var npc_sprite = get_node("npc_sprite")
onready var animated_sprite = get_node("AnimatedSprite")
var data 
var count =1

func LoadFile(fname):
	var data_file = File.new()
	if data_file.open("res://Dialogues/data.json", File.READ) != OK:
		return
	var data_text = data_file.get_as_text()
	data_file.close()
	var data_parse = JSON.parse(data_text)
	if data_parse.error != OK:
		return
	data = data_parse.result
	
func displayDetails(id):
	dialogue.set_visible_characters(0)
	dialogue.set_bbcode(data[String(count)].dialogue)
	npc_name.set_bbcode(data[String(count)].name)
	animated_sprite.play(data[String(count)].state)

func _ready():
	LoadFile(file_name)
	displayDetails(count)
	
	

func _on_Timer_timeout():
	dialogue.set_visible_characters(dialogue.get_visible_characters()+1)

func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			if(count <=data.size()):
				count+=1;
				displayDetails(count)

