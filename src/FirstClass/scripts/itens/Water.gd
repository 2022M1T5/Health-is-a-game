extends Area2D

onready var _Water = $WaterSprite
export var points = 4

func _ready():
	randomize()
	
	# when a body collides with this element, it hides the Water
func _on_Water_body_entered(body):
	# if the body name is "Player", it triggers the hide action mentioned above
	if body.get_name() == "Player":
		_Water.hide()
		# shows the good sign when the player hits the Water
		body.play_good_hit()
		if (GameManager.health_score + points) <= 1000:
			GameManager.health_score = GameManager.health_score + points
	$CollectedSoundGood.play()
