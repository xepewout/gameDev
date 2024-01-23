extends Area2D
var inTree


func _on_body_entered(body):
	if body.name== ("jorryn"):
		inTree = true
	pass 
	
func _on_body_exited(body):
	inTree = false
	pass

	
func _process(delta):
	if(inTree and Input.is_action_just_pressed("press_space")):
		queue_free()
		SceneManager.log_count += 3
		SceneManager.treeCut = true
		Dialogic.VAR.treeCut = true
	pass
