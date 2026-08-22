extends Node2D

var enemy_scene = preload("res://Enemy.tscn")

var spawn_timer := 0.0
var spawn_interval := 2.0

func _process(delta):
	spawn_timer += delta

	if spawn_timer >= spawn_interval:
		spawn_timer = 0.0
		spawn_enemy()
		spawn_interval = max(0.5, spawn_interval - 0.05)

func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(
		randf_range(50, 1100),
		randf_range(80, 580)
	)
	get_parent().call_deferred("add_child", enemy)
