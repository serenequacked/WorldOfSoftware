extends Node2D

func _ready():
	#Disable user click on locked worlds
	get_node("World2Root").disableCollison()
	get_node("World3Root").disableCollison()
	get_node("World4Root").disableCollison()
	return

func _on_BacKButton_pressed():
	 get_tree().change_scene("res://Scenes/CharacterSelection/CharacterSelection.tscn")





