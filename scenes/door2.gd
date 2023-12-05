extends StaticBody2D
var count = 0
var backCount = 0



func _on_button_2_body_entered(body):
	if body.name == ("log"):
		count += 1
	print(count)
	checkIfPressed()


func _on_button_2_body_exited(body):
	if body.name == ("log"):
		count -= 1
	print(count)
	checkIfPressed()


func _on_button_3_body_entered(body):
	if body.name == ("log"):
		count += 1
	print(count)
	checkIfPressed()


func _on_button_3_body_exited(body):
	if body.name == ("log"):
		count -= 1
	print(count)
	checkIfPressed()
	
func _on_button_back_2_body_entered(body):
	if body.name == ("jorryn"):
		backCount += 1
	checkIfPressed()


func _on_button_back_2_body_exited(body):
	if body.name == ("jorryn"):
		backCount -= 1
	checkIfPressed()
	
func checkIfPressed():
	if count == 2 or backCount == 1:
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.texture = null
	if count < 2 and backCount == 0:
		$CollisionShape2D.set_deferred("disabled", false)
		$Sprite2D.texture = load("res://sprites/door.png")
	pass
	



