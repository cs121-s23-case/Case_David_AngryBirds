extends RigidBody2D
var velocity = Vector2.ZERO
@onready var Crash: AudioStreamPlayer2D = $"../AudioStreamPlayer/Sound Effects/Crash"
var tracking = false
const GRAVITY = 35
const SPEED = 3000
const JUMPFORCE = -900
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	rng.randomize()
	var velocity = Vector2(0, 0)  # Moving right at 100 units per second
	linear_velocity = velocity
	

	
func _physics_process(delta):
	if Input.is_action_just_pressed("up"):
		var random_x = rng.randf_range(200, 600)  # Random x between 200 and 600
		var random_y = rng.randf_range(-1200, -800)  # Random y between -1200 and -800
		apply_central_impulse(Vector2(random_x, random_y))


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body.name != "Fish":
		Crash.play()
