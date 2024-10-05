extends RigidBody2D
var velocity = Vector2.ZERO
@onready var Crash: AudioStreamPlayer2D = $"../AudioStreamPlayer/Sound Effects/Crash"
var tracking = false
const GRAVITY = 35
const SPEED = 9000
const JUMPFORCE = -900

# Called when the node enters the scene tree for the first time.


func _ready() -> void:

	var velocity = Vector2(0, 0)  # Moving right at 100 units per second
	linear_velocity = velocity
	

	
func _process(delta):
	if Input.is_action_just_pressed("up"):
		apply_central_impulse(Vector2(0,-1000))
		var velocity = Vector2(600, 0)  # Moving right at 100 units per second
		linear_velocity = velocity


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body.name != "Fish":
		Crash.play()


func _on_body_entered(body: Node) -> void:
	if body.name != "Fish":
		Crash.play()
