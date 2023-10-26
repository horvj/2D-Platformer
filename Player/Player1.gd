extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.player1Input == "Archer":
		load("res://Player/archer.tscn")
	elif Global.player1Input == "Swordsman":
		load("res://Player/swordsman.tscn")
	elif Global.player1Input == "Wizard":
		load("res://Player/wizard.tscn")

