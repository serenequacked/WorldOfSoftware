extends Node2D

var level_cleared = true
var stars =2
# Called when the node enters the scene tree for the first time.
func _ready():
	set_levels(get_node("Levels"))


func set_levels(node):
	var img
	var star0 = load("res://Assets//Worlds//0 stars.png")
	var star1 = load("res://Assets//Worlds//1 stars.png")
	var star2 = load("res://Assets//Worlds//2 stars.png")
	var star3 = load("res://Assets//Worlds//3 stars.png")

	for N in node.get_children():
		if N.get_child_count() > 0:
			if(level_cleared == false):
				img = load("res://Assets//Worlds//roundlocked.png")
				N.set_texture(img)
			set_levels(N)
		else:
			if N.is_class("Sprite"):
				match(stars):
					0:
						N.set_texture(star0)
					1:
						N.set_texture(star1)
					2:
						N.set_texture(star2)
					3:
						N.set_texture(star3)
					_:
						N.set_texture(null)
