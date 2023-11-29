extends Area2D

func _on_body_entered(body):
	Dialogic.start('startTheQuest')
	get_viewport().set_input_as_handled()
	pass # Replace with function body.
