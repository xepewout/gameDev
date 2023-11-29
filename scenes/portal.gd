extends Area2D

func _ready():
	pass # Replace with function body.

func _on_body_entered(body):
		SceneManager.change_scene("res://scenes/cabin.tscn")


