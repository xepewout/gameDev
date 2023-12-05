extends StaticBody2D
var count = 0


func _on_button_4_body_entered(body):
	if body.name == ("jorryn"):
		count += 1
	checkIfPressed()


func _on_button_4_body_exited(body):
	if body.name == ("jorryn"):
		count -= 1
	checkIfPressed()


func _on_back_button_3_body_entered(body):
	if body.name == ("log"):
		count += 1
	checkIfPressed()


func _on_back_button_3_body_exited(body):
	if body.name == ("log"):
		count -= 1
	checkIfPressed()

func checkIfPressed():
	if count >= 1:
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.texture = null
	if count == 0:
		$CollisionShape2D.set_deferred("disabled", false)
		$Sprite2D.texture = load("res://sprites/door.png")
	pass
