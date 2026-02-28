extends CharacterBody2D

# Movement speed
var speed = 200
var jump_velocity = -400

func _physics_process(delta):
	# Horizontal movement
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed

	# Jump
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = jump_velocity

	# Gravity is applied automatically
	move_and_slide()
