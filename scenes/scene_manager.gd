extends Node

var lastScene 
var log_carried = true
var player_speed = 400
var player_lives = 3
var log_count = 0
var treeCut = false
var boat_carried = false
var spawnPos = Vector2(0, 0)

var current_scene = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func change_scene(path_to_new_scene):
	log_carried = true
	call_deferred("_deferred_goto_scene", path_to_new_scene)

func _deferred_goto_scene(path):
	# It is now safe to remove the current scene.
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instantiate()

	# Add it to the active scene, as child of root.
	get_tree().root.add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene_to_file() API.
	get_tree().current_scene = current_scene	
	
func changeLastScene(path_to_last_scene):
	lastScene = path_to_last_scene

func lose_life():
	if player_lives >= 0:
		player_lives -= 1
		
	if player_lives == -1:
		print("dead")
		dead()

func change_speed(speed):
	player_speed = speed

func dead():
	lastScene = ("res://scenes/UI/gameOver.tscn")
	player_lives = 3
	#change_scene("res://scenes/gameOver.tscn")
	
