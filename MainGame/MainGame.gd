extends Control

export (int) var countdownMax
var currentTimer


# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	
	while (currentTimer > 0):
		yield(get_tree().create_timer(1.0), "timeout")
		currentTimer = currentTimer - 1
		$HUD/Countdown.text = str(currentTimer)
		print(currentTimer)
	print("Game Over")
	# Load the main menu again
	GlobalVariables.bulletInstanceCount = 0
	
	
	
	get_tree().change_scene("res://Menu/Menu.tscn")
