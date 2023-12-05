extends Node

var lastScene 
var log_carried = true
var player_speed = 200
var player_lives = 3
var log_count = 0

func change_scene(path_to_new_scene):
	log_carried = true
	get_tree().change_scene_to_file(path_to_new_scene)
	
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
	lastScene = ("res://scenes/gameOver.tscn")
	player_lives = 3
	#change_scene("res://scenes/gameOver.tscn")
	
