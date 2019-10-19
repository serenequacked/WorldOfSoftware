extends Camera2D


func _ready():
	set_process(true)

func _process(delta):
	var x = position.x+1
	var y = position.y+1
	self.position = Vector2(x,y)

