extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	difficulty_multiplier(6)
	var name = "Player One"
	var welcome = "Hello"
	
	var message = welcome + " " + name

	print(message)
	
	var currentScore = 500
	var highScore = 200
#	if currentScore > highScore:
#		highScore = currentScore # Set new high score
#		$HUD.dialog.text = "Well done! You got a new high score"
#	elif currentScore == highScore:
#		$HUD.dialog.text = "You equalled the top score. So Close! Try again!"
#	else:
#		$HUD.dialog.text = "Not good enough. Try again!"
		
	var arr = [1,2,3]
	print(arr[1])	# Displays 2
	arr[1] = "Updating element, and changing data type."
	print(arr[1])	# Displays "Updating element, and changing data type."
	
	var dict = {"name": "User", "score": 25, "time": 12.34}
	print(dict["name"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var previousScores = [203,20,245,13,199] # the previous 5 scores 

var averageScores # holds the average Score

var totalScores # holds the all the scores added up together

var lengthOfTheArray # holds the value equal to the length of the array

func calculateAverageScore(): # this function will find the average score in the Array
	for x in previousScores: #the range is equal to the size of the array 
		totalScores = totalScores+x # adds the index of x to the total score valuable
		lengthOfTheArray +=1 # increase the value of lengthOfTheArray by one to keep count of 
											  # the size of the array 
	averageScores = (totalScores/lengthOfTheArray) # divides the total scores by value of  
																						  # lengthOfTheArray to get the average 
																						  # score
	print(averageScores) # print the averageScores value
	
	
var hardness_level = 4

func difficulty_multiplier(score):
	var final_score
	if hardness_level == 1:
		final_score = score * 2
	elif hardness_level == 2:
		final_score = score * 4
	elif hardness_level == 3:
		final_score = score * 8
	elif hardness_level == 4:
		final_score = score * 16
	else:
		final_score = 0
	print(final_score)
