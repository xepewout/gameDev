extends Area2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
	
func _on_body_entered(node):
		SceneManager.change_scene("res://scenes/cabin.tscn")


