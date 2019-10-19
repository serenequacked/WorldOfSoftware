extends Node

var dialogue_path = "res://Dialogues//"
var data

func _ready():
	pass # Replace with function body.


func load_file(file_name):
	var data_file = File.new()
	if data_file.open(dialogue_path+file_name, File.READ) != OK:
		return
	var data_text = data_file.get_as_text()
	data_file.close()
	var data_parse = JSON.parse(data_text)
	if data_parse.error != OK:
		return
	data = data_parse.result
	return data

