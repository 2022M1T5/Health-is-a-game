extends TextureButton

func _on_RestartGameBtn_pressed():
	GameManager.health_score = 1000
	get_tree().change_scene(("res://scenes/Menu.tscn"))
