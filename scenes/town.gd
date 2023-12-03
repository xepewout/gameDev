extends Node2D

var player_scene = preload("res://scenes/player.tscn")
var player = player_scene.instantiate()

func _ready():
	self.add_child(player)
	player.position = Vector2(0,0)
	pass


func _on_area_2d_body_entered(body):
	SceneManager.change_scene("res://scenes/schoolInterior.tscn")
	pass # Replace with function body.