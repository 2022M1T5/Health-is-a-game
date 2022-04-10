extends Node


# Declare member variables here. Examples:
# var a = 2
var velocidade = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/JogarButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_JogarButton_pressed():
		GameManager.health_score = 1000
		get_tree().change_scene("res://scenes/TutorialCerto.tscn")
		
	
	
func _on_SairButton_pressed():
	get_tree().quit()
	pass # Replace with function body.


	$AudioStreamPlayer.stop()
	
func _process(delta):
	$BabyFrame01/AnimationPlayer.play("teste")
	$BabyFrame01.move_local_x(velocidade)
	


func _on_TextureButton_pressed():
	$AudioStreamPlayer.stop() 
func _on_TextureButton_pressed_again():
	$AudioStreamPlayer.play()