extends Area2D

func _on_Final_body_entered(body):
	if body.get_name() == "Player":
		get_tree().reload_current_scene()
