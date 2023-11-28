extends CharacterBody2D
var time = 0
var t = randf_range(1,5)
var player = load("res://scenes/player.tscn").instantiate()

func _ready():
	randomize()
	await get_tree().create_timer(t).timeout
	$Sprite2D.texture = load("res://sprites/jorrynDino.png")
	await get_tree().create_timer(.5).timeout
	SceneManager.lose_log()
	SceneManager.change_scene(SceneManager.lastScene)
	

func _process(delta): 
	time += delta
	
	
	if Input.is_action_just_pressed("press_space"):
		if time < t:
			print(time)
			print(t)
			SceneManager.lose_log()
			handle_spacebar_press()
		else: 
			handle_spacebar_press()
	

func handle_spacebar_press():
	print("Spacebar pressed!")
	SceneManager.change_scene(SceneManager.lastScene)



