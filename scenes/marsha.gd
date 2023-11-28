extends CharacterBody2D

var speed = 500
# Called when the node enters the scene tree for the first time.

func _ready():
	pass # Replace with function body.
	3
# Called every frame. 'delta' is the elapsed time since the previous frame.

func body_entered(body):
	if body.name() == "jorryn":
		print("hi")

func _physics_process(delta):
	var player = get_parent().get_node("player/jorryn")
	velocity = (player.global_position - global_position).normalized() * speed
	move_and_slide()
	
	if get_slide_collision_count()>0 and get_slide_collision(get_slide_collision_count()-1).get_collider().name == "jorryn":
		#get_tree().paused = true
		SceneManager.changeLastScene(get_tree().current_scene.scene_file_path)
		SceneManager.change_scene("res://scenes/minigame.tscn")
	

	







