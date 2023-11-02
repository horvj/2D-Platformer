extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var player2 = null
	if Global.player2Input == "Archer":
		player2 = load("res://Player/archer.tscn")
	elif Global.player2Input == "Swordsman":
		player2 = load("res://Player/swordsman.tscn")
	elif Global.player2Input == "Wizard":
		player2 = load("res://Player/wizard.tscn")
	if player2 != null:
		var p2 = player2.instantiate()
		p2.position = Vector2(0,0)
		add_child(p2)
