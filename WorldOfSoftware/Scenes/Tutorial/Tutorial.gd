extends Node2D
var file_name = "tutorial.json"
func _ready():
	#Disable user click on locked worlds
	get_node("World2Root").disable_collison()
	get_node("World3Root").disable_collison()
	get_node("World4Root").disable_collison()
	get_node("Dialogue").display_dialogue(file_name)
	return

func _on_BacKButton_pressed():
	 get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")





