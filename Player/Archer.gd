extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var health = 100
var ability_damage
var Arrow = load("res://Player/Arrow.tscn")
var nose = Vector2(0, -60)
const attackDamage = [10, 20, 30]  # Damage values for each ability
var currentAbility = 0  # Tracks the currently selected ability

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if Global.player1Input == "Archer":
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
			currentAbility = 0
			attack()
		if Input.is_action_just_pressed("Attack2"):
			$Sprite.play("Attack2")
			var arrow = Arrow.instantiate()
			arrow.rotation = rotation
			arrow.global_position = global_position + nose.rotated(rotation)
		if Input.is_action_just_pressed("Attack3"):
			$Sprite.play("Attack3")
			var arrow = Arrow.instantiate()
			arrow.rotation = rotation
			arrow.global_position = global_position + nose.rotated(rotation)
	elif Global.player2Input == "Archer":
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
func attack():
	var hitbox = $CollisionShape2D  # A CollisionShape2D representing the attack hitbox
	var bodies = hitbox.get_overlapping_areas()  # Detect overlapping bodies
	for body in bodies:
		if body.has_node("Player") and body != self:  # Ensure the body is a different player
			body.take_damage(attackDamage)
func damage(d):
	d = ability_damage
	health -= d
	if health <= d:
		queue_free()
func _on_body_entered(body):
	if body.has_method("damage"):
		body.damage(damage)
