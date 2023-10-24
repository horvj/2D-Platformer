extends Node2D

export(String) var selectedPlayer

func _ready():
	# Load the selected player's scene
	var playerScenePath = "res://" + selectedPlayer + ".tscn"  # Adjust the path based on your scene structure
	var playerScene = preload(playerScenePath)
	var playerInstance = playerScene.instance()

	# Add the player scene to the game scene
	add_child(playerInstance)
