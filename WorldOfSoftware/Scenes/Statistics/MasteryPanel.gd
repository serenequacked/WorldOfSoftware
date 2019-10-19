extends Panel


var Star3 = preload("res://Images/star_1.png")
var Star2 = preload("res://Images/star_2.png")
var Star1 = preload("res://Images/star_3.png")
var Star0 = preload("res://Images/star_4.png")


onready var Star=get_node("Table/Points")
# Called when the node enters the scene tree for the first time.
func _ready():
	print(Star)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
