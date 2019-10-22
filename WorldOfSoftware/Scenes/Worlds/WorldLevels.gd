extends Node2D
onready var json = preload("res://Utils//LoadJson.gd").new()
onready var levels = get_node("Levels")
onready var npc_dialogue = get_node("Dialogue")
var user_data 
var file_name = "tutorialselectlevel.json"
var cleared_level = load("res://Assets//Worlds//round.png")
var star0 = load("res://Assets//Worlds//0 stars.png")
var star1 = load("res://Assets//Worlds//1 stars.png")
var star2 = load("res://Assets//Worlds//2 stars.png")
var star3 = load("res://Assets//Worlds//3 stars.png")
var world_path
var level_path

func _ready():
	return

func set_worldpath(p):
	world_path = p

func set_levelpath(p):
	level_path = p

func display_levels():
	user_data = json.load_file(world_path + level_path)
	var count =1
	var path = "Levels/Level"
	var star
	var stars_path = "//Stars"
	var star_node
	var level_node
	print(world_path)
	print(level_path)
	print(user_data)
#if user has no records of World1 level 1
	for levels in user_data:
		#Set level node path for each record in db
		level_path = path + String(count)
		level_node = get_node(level_path)
		level_node.set_texture(cleared_level)
		#Set star node
		star = user_data[String(count)].stars
		star_node = get_node(level_path + stars_path)
		star_node.show()
		match(String(star)):
			"0":
				star_node.set_texture(star0)
			"1":
				star_node.set_texture(star1)
			"2":
				star_node.set_texture(star2)
			"3":
				star_node.set_texture(star3)
			_:
				star_node.set_texture(null)
		count+=1
