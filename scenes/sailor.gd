extends Area2D


func _on_body_entered(body):
		Dialogic.start('sailor')
		get_viewport().set_input_as_handled()	
		if SceneManager.treeCut == true:
			SceneManager.boat_carried = true


