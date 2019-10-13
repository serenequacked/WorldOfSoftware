
extends RichTextLabel

var dialog = ["BLAHBLAH TEST", "WELCOME TO SGODSJGOSDG"]
var page = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)


func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)

func _unhandled_input(event):
	if event is InputEventScreenTouch:
		set_bbcode(dialog[0])
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
