extends CanvasLayer

var coins = 0

func _ready():
	var coins = get_tree().get_root().find_node("Coin2D", true,false)
	coins.connect("CoinsNumber", self, "handleCoinsNumber")
	$CoinsNumber.text = String(coins)

func handleCoinsNumber():
	coins += 1
	$CoinsNumber.text = String(coins)
