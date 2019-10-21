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

#sample qns
#FORMAT: {questionText, option1, option2, option3, option4, answerOption}
var qn1 = ["Question 1 Text","Q1 Opt1", "Q1 Opt2","Q1 Opt3","Q1 Opt3", 1] 
var qn2 = ["Question 2 Text","Q2 Opt1", "Q2 Opt2","Q2 Opt3","Q2 Opt4", 1] 
var qn3 = ["Question 3 Text","Q3 Opt1", "Q3 Opt2",null,null, 1] 
var qn4 = ["Question 4 Text","Q4 Opt1", "Q4 Opt2",null,null, 1] 
var qnsArr = [qn1,qn2,qn3,qn4]

var score = 0
var answer = 0 #set answer based on database
var options = 4 #get number of options based on database
signal correctResponse

func _ready():
	for i in range(0, qnsArr.size()):
		if qnsArr[i][3] == null:
			options = 2
		set_question(qnsArr[i][0],qnsArr[i][1],qnsArr[i][2],qnsArr[i][3],qnsArr[i][4],qnsArr[i][5])
		yield(self,"correctResponse")
	get_tree().quit() # will quit game for now

func set_question(qnText,opt1,opt2,opt3,opt4,ans):
	answer = ans
	questionText.set_text(qnText) #set question based on database
	option1.set_text(opt1) #set options based on database
	option2.set_text(opt2)
	if(options == 4):
		option3.set_text(opt3) 
		option4.set_text(opt4) 
	else:
		option3.hide() #set null if only 2 options needed
		option4.hide() #set null if only 2 options needed

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
		emit_signal("correctResponse")
	else:
		print("Wrong! Please try again")