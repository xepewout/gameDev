extends Node2D

func _ready():
	pass



func _on_portal_outside_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/opening.tscn")
