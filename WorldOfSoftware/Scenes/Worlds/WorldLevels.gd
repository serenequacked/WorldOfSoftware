extends Node2D
onready var json = preload("res://Utils//LoadJson.gd").new()
onready var levels = get_node("Levels")
var user_data 
var file_name = "tutorialselectlevel.json"
var cleared_level 
var world_path
var level_path

var stars = [load("res://Assets//Worlds//0 stars.png"),
             load("res://Assets//Worlds//1 stars.png"),
             load("res://Assets//Worlds//2 stars.png"),
             load("res://Assets//Worlds//3 stars.png")]
var path = "Levels/Level"
var a = []

func _ready():
	return

func addToArray(path):
	a.push_back(path)

func set_worldpath(p):
	world_path = p

func set_levelpath(p):
	level_path = p

func set_icon(icon_path):
	cleared_level = load(icon_path)
func disable_collison(count):
	
	var col_path 
	while count<= 9:
		col_path = path + String(count) + "/CollisionShape2D"
		get_node(col_path).set_disabled(true)
		count+=1

func display_levels():
	user_data = json.load_file(world_path + level_path)
	var count =1
	var star
	var stars_path = "//Stars"
	var star_node
	var level_node

	for levels in user_data:
		#Set level node path for each record in db
		var path2 = path + String(count) + "/"
		var sprite_path = path2 + "/Level" + String(count) 
		#level_path = path + String(count)
		level_node = get_node(sprite_path)
		level_node.set_texture(cleared_level)
		
		
		#Set star node
		star = user_data[String(count)].stars
		star_node = get_node(sprite_path + stars_path)
		star_node.show()
		match(String(star)):
			"0":
				star_node.set_texture(stars[0])
			"1":
				star_node.set_texture(stars[1])
			"2":
				star_node.set_texture(stars[2])
			"3":
				star_node.set_texture(stars[3])
			_:
				star_node.set_texture(null)
		count+=1
	disable_collison(count)


func _on_HomeArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes//Worlds//WorldsScreen.tscn")


func _on_LeaderBoardArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes//Statistics//Ranking.tscn")


func _on_Level1Area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level1_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")

func _on_Level2_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level3_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level4_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level5_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level6_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level7_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level8_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


func _on_Level9_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton:
			if event.is_pressed():
				get_tree().change_scene("res://Scenes//Quiz//QuestionScene.tscn")


