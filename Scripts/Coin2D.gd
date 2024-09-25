extends Area2D

signal CoinNumber

func _on_Coin2D_body_entered(body):
	if body.get_name() == "Player":
		$AudioStreamPlayer.playing = true
		yield(get_tree().create_timer(0.1), "timeout")
		queue_free()
		pass 
