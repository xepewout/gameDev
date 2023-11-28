extends Node2D
var player_scene = preload("res://scenes/player.tscn")
var player = player_scene.instantiate()

func _ready():
	self.add_child(player)
	player.position = Vector2(300,300)
	pass

func _process(delta):
	pass
