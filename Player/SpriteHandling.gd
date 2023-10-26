extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.player1Input == Global.player2Input):
		modulate = Color(1,1,1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
