extends Control

var countdown_label
var countdown_value = 3 # Initial countdown value

func _ready():
	countdown_label = $Label
	$Timer.wait_time = 1 # Set the countdown duration
	$Timer.start() # Start the Time
	
func _on_timer_timeout():
	countdown_value -= 1
	countdown_label.text = str(countdown_value)


	if countdown_value <= 0:
		if(Global.level == "Battlefield"):
			get_tree().change_scene_to_file("res://Levels/battlefield.tscn")
		elif(Global.level == "Plane"):
			get_tree().change_scene_to_file("res://Levels/plane.tscn")
		# Start your game or change to the game scene here
		# Example: get_tree().change_scene("res://YourGameScene.tscn")
	else:
		$Timer.start() # Restart the Timer for the next countdown step


