extends Area2D

var rng = RandomNumberGenerator.new()
var pulse_time := 0.0

@onready var orb_visual = $Polygon2D

func _ready():
	rng.randomize()

func _process(delta):
	pulse_time += delta
	
	var pulse = 1.0 + sin(pulse_time * 4.0) * 0.15
	orb_visual.scale = Vector2(pulse, pulse)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_parent().add_score(1)

		position.x = rng.randf_range(60.0, 1092.0)
		position.y = rng.randf_range(60.0, 588.0)
