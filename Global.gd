extends Node

var player1Input: String = ""
var player2Input: String = ""
var level: String = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var menu = get_node_or_null("/root/Level/Menu")
		if menu == null:
			get_tree().quit()
		elif menu.visible:
			menu.hide()
		else:
			menu.show()
