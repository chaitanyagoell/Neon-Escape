extends Node2D

var score := 0
var high_score := 0
var game_started := false

const SAVE_PATH := "user://highscore.save"

@onready var final_score_label = $GameOverPanel/FinalScoreLabel
@onready var final_best_label = $GameOverPanel/FinalBestLabel
@onready var score_label = $ScoreLabel
@onready var high_score_label = $HighScoreLabel

func _ready():
	load_high_score()
	score_label.text = "SCORE: " + str(score)
	high_score_label.text = "BEST: " + str(high_score)
	$GameOverPanel.visible = false
	$StartPanel.visible = true
	$EnemySpawner.set_process(false)

	for enemy in get_tree().get_nodes_in_group("enemies"):
		enemy.set_physics_process(false)


func add_score(points: int):
	score += points
	score_label.text = "SCORE: " + str(score)


func game_over():
	$GameOverPanel.visible = true

	if score > high_score:
		high_score = score
		save_high_score()

	high_score_label.text = "BEST: " + str(high_score)
	final_score_label.text = "SCORE: " + str(score)
	final_best_label.text = "BEST: " + str(high_score)

	$EnemySpawner.set_process(false)

	for enemy in get_tree().get_nodes_in_group("enemies"):
		enemy.set_physics_process(false)


func save_high_score():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	file.store_var(high_score)


func load_high_score():
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		high_score = file.get_var()


func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()

func _on_start_button_pressed() -> void:
	game_started = true
	$StartPanel.visible = false
	$EnemySpawner.set_process(true)
