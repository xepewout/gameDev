extends Area2D


func _on_body_entered(body):
	SceneManager.change_scene("res://scenes/worldTree2.tscn")
