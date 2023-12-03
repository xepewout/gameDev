extends StaticBody2D


func _on_button_4_body_entered(body):
	if body.name == ("jorryn"):
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.texture = load("")
	pass # Replace with function body.


func _on_button_4_body_exited(body):
	$CollisionShape2D.set_deferred("disabled", false)
	$Sprite2D.texture = load("res://sprites/door.png")
	pass # Replace with function body.


func _on_back_button_3_body_entered(body):
	if body.name == ("log"):
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.texture = load("")
	pass # Replace with function body.


func _on_back_button_3_body_exited(body):
	$CollisionShape2D.set_deferred("disabled", false)
	$Sprite2D.texture = load("res://sprites/door.png")
	pass # Replace with function body.
