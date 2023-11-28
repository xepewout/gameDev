extends CharacterBody2D


const log_speed = 300.0


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
