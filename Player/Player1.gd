extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var player = null
	if Global.player1Input == "Archer":
		player = load("res://Player/archer.tscn")
	elif Global.player1Input == "Swordsman":
		player = load("res://Player/swordsman.tscn")
	elif Global.player1Input == "Wizard":
		player = load("res://Player/wizard.tscn")
	if player != null:
		var p = player.instantiate()
		p.position = Vector2(0,0)
		add_child(p)
