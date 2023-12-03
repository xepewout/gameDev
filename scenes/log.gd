extends CharacterBody2D


var log_speed = 300.0
var inLog = false


#logs_carried == 2 is wrong it should keep track of that log being sent out somehow
func _ready():
	print("ready")

	
func _physics_process(delta):
	var xdirection = Input.get_axis("ui_left", "ui_right")
	var ydirection = Input.get_axis("ui_up", "ui_down")
	
	if xdirection or ydirection:
		velocity.x = xdirection * log_speed
		velocity.y = ydirection * log_speed
	
	else:
		velocity.x = move_toward(velocity.x, 0, log_speed)
		velocity.y= move_toward(velocity.y, 0, log_speed)
		
	move_and_slide()
	
	#if get_slide_collision_count()>1 and get_slide_collision(get_slide_collision_count()-1).get_collider().name == "marsha" and log_speed == 0.0:
		#print(get_slide_collision(get_slide_collision_count()-1).get_collider())
		#get_slide_collision(get_slide_collision_count()-1).get_collider().queue_free()
		

func _on_area_2d_body_entered(body):
	if body.name== ("jorryn"):
		inLog = true
	pass 
	
func _on_area_2d_body_exited(body):
	inLog = false
	pass 
	
func _process(delta):
	if(inLog and Input.is_action_just_pressed("press_space")):
		get_parent().queue_free()
		SceneManager.log_carried = true
	pass




