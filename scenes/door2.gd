extends StaticBody2D
var count = 0



func _on_button_2_body_entered(body):
	if body.name == ("log"):
		count += 1
	checkIfPressed()
	pass # Replace with function body.


func _on_button_2_body_exited(body):
	if body.name == ("log"):
		count -= 1
	$CollisionShape2D.set_deferred("disabled", false)
	$Sprite2D.texture = load("res://sprites/door.png")
	pass # Replace with function body.


func _on_button_3_body_entered(body):
	if body.name == ("log"):
		count += 1
	checkIfPressed()
	pass # Replace with function body.


func _on_button_3_body_exited(body):
	if body.name == ("log"):
		count -= 1
	$CollisionShape2D.set_deferred("disabled", false)
	$Sprite2D.texture = load("res://sprites/door.png")
	pass # Replace with function body.
	
func checkIfPressed():
	if count == 2:
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.texture = load("")
	pass
	


func _on_button_back_2_body_entered(body):
	$CollisionShape2D.set_deferred("disabled", true)
	$Sprite2D.texture = load("")
	pass # Replace with function body.


func _on_button_back_2_body_exited(body):
	$CollisionShape2D.set_deferred("disabled", false)
	$Sprite2D.texture = load("res://sprites/door.png")
	pass # Replace with function body.
