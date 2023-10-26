extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if Global.player1Input == "Wizard":
		# Add the gravity.
		if not is_on_floor():
			velocity.y += gravity * delta
			$Sprite.play("Jump")
		elif abs(velocity.x) > 0:
			$Sprite.play("Walk")
		else:
			$Sprite.play("Idle")

		# Handle Jump.
		if Input.is_action_just_pressed("jump") and is_on_floor():
			$Sprite.play("Jump")
			velocity.y = JUMP_VELOCITY
		if Input.is_action_just_pressed("Attack1"):
			$Sprite.play("Attack1")
		if Input.is_action_just_pressed("Attack2"):
			$Sprite.play("Attack2")
		if Input.is_action_just_pressed("Attack3"):
			$Sprite.play("Attack3")
	elif Global.player2Input == "Wizard":
		# Add the gravity.
		if not is_on_floor():
			velocity.y += gravity * delta
			$Sprite.play("Jump")
		elif abs(velocity.x) > 0:
			$Sprite.play("Walk")
		else:
			$Sprite.play("Idle")

		# Handle Jump.
		if Input.is_action_just_pressed("jump2") and is_on_floor():
			$Sprite.play("Jump")
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		if direction < 0:
			$Sprite.flip_h = true
		else:
			$Sprite.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

