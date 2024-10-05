extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_shape_entered(body_rst: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body.name != "enemy":
		var game_controller = get_node("/root/level_2")
		body.queue_free()
		get_node("/root/level_2").incrementScore()
		self.queue_free()
	pass
