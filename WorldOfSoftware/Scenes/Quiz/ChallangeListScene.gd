extends Node2D

export (NodePath) var vbxcontainer
export (NodePath) var background
export (NodePath) var saveButton
export (NodePath) var upButton
export (NodePath) var downButton

onready var container = get_node(vbxcontainer)
onready var worldBG = get_node(background)
onready var save = get_node(saveButton)
onready var up = get_node(upButton)
onready var down = get_node(downButton)

var qn1 = [1,1,1,"Question 1 Text","Q1 Opt1", "Q1 Opt2","Q1 Opt3","Q1 Opt3", 1] 
var qn2 = [1,1,1,"Question 2 Text","Q2 Opt1", "Q2 Opt2","Q2 Opt3","Q2 Opt4", 1] 
var qn3 = [2,1,1,"Question 3 Text","Q3 Opt1", "Q3 Opt2",null,null, 1] 
var qn4 = [2,1,1,"Question 4 Text","Q4 Opt1", "Q4 Opt2",null,null, 1] 
var qnsArr = [qn1,qn2,qn3,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4,qn4]

var btn = load("res://Assets//Quiz//medium.png")
var upImg = load("res://Assets//Quiz//up.png")
var downImg = load("res://Assets//Quiz//down.png")
var world1_Image = load("res://Assets//Quiz//background1.png")
var row = load("res://Scenes/Quiz/GridRow.tscn")
var pos_y = 10

func _ready():
	worldBG.texture = world1_Image
	save.set_normal_texture(btn)
	up.set_normal_texture(upImg)
	down.set_normal_texture(downImg)
	for i in range(0, qnsArr.size()):
		var rowScene = row.instance()
		rowScene.position.x = 30
		rowScene.position.y = pos_y
		container.add_child(rowScene)
		rowScene.get_node("HBoxContainer/Label").text = qnsArr[i][3]
		pos_y = pos_y + 50
	pass 


func _on_downButton_pressed():
	var vsbar = container.get_v_scrollbar ()
	pass # Replace with function body.
