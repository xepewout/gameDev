extends Node2D
var player_scene = preload("res://scenes/player.tscn")
var player = player_scene.instantiate()

func _ready():
	self.add_child(player)


func _on_portal_to_opening_body_entered(body):
	SceneManager.change_scene("res://scenes/opening.tscn")
	pass # Replace with function body.
