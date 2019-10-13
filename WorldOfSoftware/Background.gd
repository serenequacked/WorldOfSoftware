var dialog = ["BLAHBLAH TEST", "WELCOME TO SGODSJGOSDG"]
var page = 1
onready var display = get_node("display")
# Called when the node enters the scene tree for the first time.
func _ready():
	display.set_bbcode(dialog[page])
	display.set_visible_characters(0)


func _on_Timer_timeout():
	display.set_visible_characters(display.get_visible_characters()+1)

func _unhandled_input(event):
	if event is InputEventScreenTouch:
		display.set_bbcode(dialog[0])
