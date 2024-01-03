extends CharacterBody2D



var time_moving_left = 0.0
var marshaTime = 0.0
var is_moving_left = false
var marsha_scene = preload("res://scenes/marsha.tscn")
var marsha
var logCount = 2 #increases when new log is picked up
var whichLog = 0 #keeps track of which log you have press q and e to switch between logs
var logArray = [] #keeps track of which log is at which index in array
var log_scene = preload("res://scenes/log.tscn")


#called on intialize, adds a log as a child of the parent scene
#updates player sprite
func _ready():
	pass
	
#xdirection: gets input if left or right is pressed 
#ydirection: gets input if up or down is pressed
#1st if: sets velocity equal to direction * player_speed
#else: sets velocity equal to 0
#2nd if: counts time moving left
#3rd if: if moving left for more than 2 seconds, adds marsha to scene
#4th if: counts marsha time and sets time equal to 0 so marsha doesn't respawn
#5th if: clears marsha if more than 16 seconds
#6th if: if collides with marsha then play minigame

func _physics_process(delta):
	
	var xdirection = Input.get_axis("left", "right")
	var ydirection = Input.get_axis("up", "down")
	
	if xdirection or ydirection:
		velocity.x = xdirection * SceneManager.player_speed
		velocity.y = ydirection * SceneManager.player_speed
	
	else:
		velocity.x = move_toward(velocity.x, 0, SceneManager.player_speed)
		velocity.y= move_toward(velocity.y, 0, SceneManager.player_speed)
		
	if velocity.x < 0:
		$Sprite2D.texture = load("res://sprites/jorrynDino.png")
		time_moving_left += delta	
		
	if velocity.x > 0:
		$Sprite2D.texture = load("res://sprites/jorrynDinoRight.png")
			
	#add marsha to scene and not player
	#marsha doesn't respawn  after the log frees her
	if time_moving_left >= 2:
		marsha = marsha_scene.instantiate()
		get_parent().get_parent().add_child(marsha)
		marshaTime += delta
		marsha.position = Vector2(200, 200)
	
	if marshaTime > 0:
		marshaTime += delta
		time_moving_left = 0
		
	if marshaTime >= 16:
		marsha.queue_free()
		marshaTime = 0
		
	if Input.is_action_just_pressed("press_space"):
		if SceneManager.log_carried == true:
			throw_log()
	
	if Input.is_action_just_pressed("press_e"):
		if logCount == 0:
			print("hi3 " + str(whichLog))
			pass
		elif whichLog == logCount - 1:
			whichLog = 0
			print("hi4 " + str(whichLog))
		else:
			whichLog += 1
			print("hi5 " + str(whichLog))
		
	if Input.is_action_just_pressed("press_q"):
		if logCount == 0:
			print("hi " + str(whichLog))
			pass
		elif whichLog == 0:
			whichLog = logCount - 1
			print("hi1 " + str(whichLog))
		else:
			whichLog -= 1
			print("hi2 " + str(whichLog))
		
	if get_slide_collision_count()>0: 
		#print(get_slide_collision(get_slide_collision_count()-1).get_collider().name) == "marsha":
		#get_tree().paused = true
		SceneManager.changeLastScene(get_tree().current_scene.scene_file_path)
		#SceneManager.change_scene("res://scenes/minigame.tscn")
		
	move_and_slide()
	
	
	
	
		
		
#func: updates player sprite to different logs carried
func throw_log():
	var log2 = log_scene.instantiate()
	log2.global_position = (global_position + Vector2(100,0))
	get_parent().get_parent().add_child(log2)
	SceneManager.log_carried = false
		
		
