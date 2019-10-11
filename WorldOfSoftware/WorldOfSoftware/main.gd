extends Control

onready var tie = get_node("panel/text_interface_engine")
onready var display = get_node("Polygon2D/display")

func _ready():
	#select_demo(3)
	tie.reset()
	tie.set_color(Color(0.3,1,1))
	# Schedule an Input in the buffer, after all
	# the text before it is displayed
	tie.buff_text("Hey there!! What's your name?\n", 0.01)
	tie.buff_input()
	tie.set_state(tie.STATE_OUTPUT)
	
	pass
