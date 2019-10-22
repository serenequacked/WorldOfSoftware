extends Node2D

export (NodePath) var questionTextPath
export (NodePath) var optionBtn1
export (NodePath) var optionBtn2
export (NodePath) var optionBtn3
export (NodePath) var optionBtn4
export (NodePath) var optionLabel1
export (NodePath) var optionLabel2
export (NodePath) var optionLabel3
export (NodePath) var optionLabel4
export (NodePath) var background
export (NodePath) var popupDialog
export (NodePath) var popupLabel
export (NodePath) var scoreLabel

onready var questionText = get_node(questionTextPath)
onready var option1 = get_node(optionBtn1)
onready var option2 = get_node(optionBtn2)
onready var option3 = get_node(optionBtn3)
onready var option4 = get_node(optionBtn4)
onready var optionTxt1 = get_node(optionLabel1)
onready var optionTxt2 = get_node(optionLabel2)
onready var optionTxt3 = get_node(optionLabel3)
onready var optionTxt4 = get_node(optionLabel4)
onready var worldBG = get_node(background)
onready var popup = get_node(popupDialog)
onready var popupTxt = get_node(popupLabel)
onready var scoreTxt = get_node(scoreLabel)

#sample qns
#FORMAT: {questionText, option1, option2, option3, option4, answerOption}
#OVERALL FORMAT: {world, section, level, questionText, option1, option2, option3, option4, answerOption}
var qn1 = [1,1,1,"Question 1 Text","Q1 Opt1", "Q1 Opt2","Q1 Opt3","Q1 Opt3", 1] 
var qn2 = [1,1,1,"Question 2 Text","Q2 Opt1", "Q2 Opt2","Q2 Opt3","Q2 Opt4", 1] 
var qn3 = [2,1,1,"Question 3 Text","Q3 Opt1", "Q3 Opt2",null,null, 1] 
var qn4 = [2,1,1,"Question 4 Text","Q4 Opt1", "Q4 Opt2",null,null, 1] 
var qnsArr = [qn1,qn2,qn3,qn4]

var score = 0
var answer = 0 #set answer based on database
var options = 4 #get number of options based on database
signal correctResponse

var btn = load("res://Assets//Quiz//medium.png")
var world1_Image = load("res://Assets//Quiz//background1.png")
var world2_Image = load("res://Assets//Quiz//background2.png")
var popupImage = load("res://Assets//Quiz//warning.png")

func _ready():	
	create_Btn()
	for i in range(0, qnsArr.size()):
		if qnsArr[i][0] == 1:
			worldBG.texture = world1_Image
		
		if qnsArr[i][0] == 2:
			worldBG.texture = world2_Image
			
		if qnsArr[i][6] == null:
			options = 2
		set_question(qnsArr[i][3],qnsArr[i][4],qnsArr[i][5],qnsArr[i][6],qnsArr[i][7],qnsArr[i][8])
		yield(self,"correctResponse")
	get_tree().quit() # will quit game for now

func create_Btn():
	popup.set_normal_texture(popupImage)
	option1.set_normal_texture(btn)
	option2.set_normal_texture(btn)
	option3.set_normal_texture(btn)
	option4.set_normal_texture(btn)

func set_question(qnText,opt1,opt2,opt3,opt4,ans):
	answer = ans
	questionText.set_text(qnText) #set question based on database
	optionTxt1.set_text(opt1) #set options based on database
	optionTxt2.set_text(opt2)
	if(options == 4):
		optionTxt3.set_text(opt3) 
		optionTxt4.set_text(opt4) 
	else:
		option3.hide()
		option4.hide()
		optionTxt3.hide() #set null if only 2 options needed
		optionTxt4.hide() #set null if only 2 options needed

func checkAns(selected, answer):
	if selected == answer:
		score = score + 1;
		scoreTxt.set_text(str(score))
		popupDialog(true)
		emit_signal("correctResponse")
	else:

		popupDialog(false)

func popupDialog(check):
	if check == true:
		popupTxt.set_text("CORRECT!")
	else: 
		popupTxt.set_text("WRONG!")
	popup.show()
	popupTxt.show()
	yield(get_tree().create_timer(0.7),"timeout")
	popup.hide()
	popupTxt.hide()

func _on_TextureButton1_pressed():
	
	checkAns(1, answer);
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	checkAns(2, answer);
	pass # Replace with function body.


func _on_TextureButton3_pressed():
	checkAns(3, answer);
	pass # Replace with function body.


func _on_TextureButton4_pressed():
	checkAns(4, answer);
	pass # Replace with function body.
