extends Node2D

var player_scene = preload("res://scenes/player.tscn")
var player = player_scene.instantiate()

func _ready():
	self.add_child(player)


func _on_portal_to_ocean_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/ocean.tscn")


func _on_portal_back_body_entered(body):
	if body.name == "jorryn":
		SceneManager.change_scene("res://scenes/opening.tscn")
		body.global_position = Vector2(0,300)
	
