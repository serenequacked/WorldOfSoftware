extends Node2D

export (NodePath) var questionTextPath
export (NodePath) var option1Path
export (NodePath) var option2Path
export (NodePath) var option3Path
export (NodePath) var option4Path

onready var questionText = get_node(questionTextPath)
onready var option1 = get_node(option1Path)
onready var option2 = get_node(option2Path)
onready var option3 = get_node(option3Path)
onready var option4 = get_node(option4Path)

var score = 0
var answer = 2 #set answer based on database
var options = 4 #get number of options based on database

func _ready():
	set_question()

func set_question():
	questionText.set_text("Question 123") #set question based on database
	option1.set_text("Option 1") #set options based on database
	option2.set_text("Option 2")
	if(options == 4):
		option3.set_text("Option 3") #set null if only 2 options needed
		option4.set_text("Option 4")#set null if only 2 options needed
	else:
		option3.hide()
		option4.hide()

func _input(event):
	var selected = 0
	if event is InputEventMouseButton:
		if option1.is_pressed():
			selected = 1;
			checkAns(selected, answer);
		if option2.is_pressed():
			selected = 2;
			checkAns(selected, answer);
		if option3.is_pressed():
			selected = 3;
			checkAns(selected, answer);
		if option4.is_pressed():
			selected = 4;
			checkAns(selected, answer);

func checkAns(selected, answer):
	if selected == answer:
		score = score + 1;
		print("Correct! Your score is ")
		print(score)
	else:
		print("Wrong! Your score is ")
		print(score)