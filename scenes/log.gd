extends CharacterBody2D


var log_speed = 300.0


func _ready():
	print("ready")
	if SceneManager.logs_carried == 2:
		log_speed = 0.0
		$Sprite2D.texture = load("res://sprites/attackLog.png")
		$CollisionShape2D.one_way_collision = true

	
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
	
	if get_slide_collision_count()>1 and get_slide_collision(get_slide_collision_count()-1).get_collider().name == "marsha" and log_speed == 0.0:
		get_slide_collision(get_slide_collision_count()-1).get_collider().queue_free()
		
	#if get_slide_collision_count()>0 and get_slide_collision(get_slide_collision_count()-1).get_collider().name == "jorryn":
		#get_parent().queue_free()
		#print("hi")
		#SceneManager.logs_carried += 1




func _on_area_2d_body_entered(body):
	if body.name== ("jorryn"):
		get_parent().queue_free()

	pass 

