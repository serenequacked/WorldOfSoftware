extends Control

onready var http : HTTPRequest = $HTTPRequest
onready var username : LineEdit = $Container/VBoxContainer2/Username/LineEdit
onready var password : LineEdit = $Container/VBoxContainer2/Password/LineEdit
onready var notification : Label = $Container/Notification

onready var domain : LineEdit = $Container/VBoxContainer2/Domain/LineEdit

func _on_LoginButton_pressed() -> void:
	if username.text.empty() or password.text.empty():
		notification.text = "Enter Username or Password"
		return
	var returnVar = "%s.%s" 
	var finalVar = returnVar % [domain.text,username.text]
	Firebase.login(finalVar, password.text, http)

func _on_BackButton_pressed() -> void:
	get_tree().change_scene("res://Main.tscn")

func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: PoolStringArray, body: PoolByteArray) -> void:
	var response_body := JSON.parse(body.get_string_from_ascii())
	if response_code != 200:
		notification.text = response_body.result.error.message.capitalize()
	else:
		if domain.text[0].to_upper() == "S":
			notification.text = "Student Sign in sucessful!"
		else:
			notification.text = "Teacher Sign in sucessful!"
		


func _on_BackButton_pressed_():
	pass # Replace with function body.
