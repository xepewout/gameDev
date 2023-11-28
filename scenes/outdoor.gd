extends Node2D
var player_scene = preload("res://scenes/player.tscn")
var player = player_scene.instantiate()


func _ready():
	self.add_child(player)
	player.position = Vector2(200,200)
	pass 
	
	
