extends Area2D


func _on_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/beach.tscn")
