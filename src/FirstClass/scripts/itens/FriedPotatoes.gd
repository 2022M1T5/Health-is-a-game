extends Area2D

onready var _FriedPotatoes = $FriedPotatoesSprite

export var points = -3

# when a body collides with this element, it hides the FriedPotatoes
func _on_FriedPotatoes_body_entered(body):
	# if the body name is "Player", it triggers the hide action mentioned above
	if body.get_name() == "Player":
		GameManager.friedpotatoes = 1
		_FriedPotatoes.hide()
		# when a body collides with this element, it hides the FriedPotatoes
		body.play_bad_hit()
		if (GameManager.health_score + points) <= 1000:
			GameManager.health_score = GameManager.health_score + points
	$CollectedSoundBad.play()
