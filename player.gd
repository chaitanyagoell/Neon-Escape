extends CharacterBody2D

@export var speed := 300.0
@export var dash_speed := 900.0
@export var dash_duration := 0.15
@export var dash_cooldown := 1.0

var health := 3
var is_dashing := false
var can_dash := true

@onready var health_label = get_parent().get_node("HealthLabel")
@onready var dash_label = get_parent().get_node("DashLabel")


func _physics_process(delta):
	# Don't allow the player to do anything before START
	if not get_parent().game_started:
		velocity = Vector2.ZERO
		return

	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	# DASH
	if Input.is_action_just_pressed("dash") and can_dash and direction != Vector2.ZERO:
		is_dashing = true
		can_dash = false
		dash_label.text = "DASH!"

		velocity = direction * dash_speed

		await get_tree().create_timer(dash_duration).timeout
		is_dashing = false

		await get_tree().create_timer(dash_cooldown).timeout
		can_dash = true
		dash_label.text = "DASH READY"

	# NORMAL MOVEMENT
	if not is_dashing:
		velocity = direction * speed

	move_and_slide()

	# Keep player inside screen
	global_position.x = clamp(global_position.x, 20.0, 1132.0)
	global_position.y = clamp(global_position.y, 20.0, 628.0)

	# Update health
	health_label.text = "HEALTH: " + str(health)

	# Game over
	if health <= 0:
		get_parent().game_over()
		set_physics_process(false)
