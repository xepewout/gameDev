extends Node

var lastScene 
var logs_carried = 3
var player_speed = 100

func change_scene(path_to_new_scene):
	get_tree().change_scene_to_file(path_to_new_scene)
	
func changeLastScene(path_to_last_scene):
	lastScene = path_to_last_scene

func lose_log():
	if logs_carried >= 0:
		logs_carried -= 1
		
	if logs_carried == -1:
		print("dead")
		dead()

func change_speed(speed):
	player_speed = speed

func dead():
	lastScene = ("res://scenes/gameOver.tscn")
	logs_carried = 3
	#change_scene("res://scenes/gameOver.tscn")
	
