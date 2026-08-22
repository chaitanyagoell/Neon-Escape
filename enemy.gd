extends CharacterBody2D

@export var speed := 100.0
@export var damage_cooldown := 1.0
@export var stop_distance := 45.0

var can_damage := true

func _ready():
	var random_scale = randf_range(0.8, 1.2)
	scale = Vector2(random_scale, random_scale)

	speed = randf_range(70.0, 140.0)

func _physics_process(delta):
	var player = get_parent().get_node("Player")

	var distance = global_position.distance_to(player.global_position)

	if distance > stop_distance:
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()

	if distance < 60.0 and can_damage:
		player.health -= 1
		can_damage = false

		print("Player Health: ", player.health)

		await get_tree().create_timer(damage_cooldown).timeout
		can_damage = true
