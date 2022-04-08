extends Area2D

onready var _Banana = $BananaSprite
export var points = 2

func _on_Banana_body_entered(body):
	if body.get_name() == "Player":
		GameManager.banana = 1
		_Banana.hide()
		if (GameManager.health_score + points) <= 1000:
			GameManager.health_score = GameManager.health_score + points
	$CollectedSoundGood.play()
