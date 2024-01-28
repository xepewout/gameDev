extends Node2D

func _ready():
	pass


func _on_portal_to_town_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/town.tscn")


func _on_portal_to_world_tree_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/worldTree1.tscn")


func _on_portal_to_beach_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/beach.tscn")


func _on_portal_to_beach_2_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/beach.tscn")
