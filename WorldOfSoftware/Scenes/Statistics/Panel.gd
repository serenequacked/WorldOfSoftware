extends Panel

const ListItem=preload("res://Scenes/Statistics/itemList.tscn")

var listIndex=0

func addItem(value):
	var item=ListItem.instance()
	listIndex=1
	item.get_node("number").text=str(listIndex)
	
	item.get_node("Name").text=value
	item.get_node("Points").text="5000"
	item.rect_min_size=Vector2(547,129)
	$board/ScrollContainer/list.add_child(item)
	#$ScrollContainer/list.add_child(item)
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	
	for i in range(100):
		addItem("Jack")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Statistics/MasteryLevel.tscn")
