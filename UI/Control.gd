extends Control

# Connect button signals to methods
func _ready():
	$Swordsman.connect("button_down", self, "_on_player_option_selected", ["swordsman"])
	$Archer.connect("button_down", self, "_on_player_option_selected", ["archer"])
	# $PlayerOption3Button.connect("button_down", self, "_on_player_option_selected", ["Player3"])

func _on_player_option_selected(selectedPlayer):
	# Load the game scene and pass the selected player
	var gameScene = preload("res://game.tscn")  # Adjust the path to your game scene
	var gameInstance = gameScene.instance()
	gameInstance.selectedPlayer = selectedPlayer
	get_tree().change_scene_to(gameInstance)
