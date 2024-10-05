extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#TODO:
#this will only work if you set the rigidbody to "contact monitoring"
#and set max contacts to higher than 0
func _on_body_entered(body):
	#TODO:
	#create a particle effect at this object's location
	#find the game UI script and send it a message that the score has increased
	#and then destroy this object using queue_free
	pass # Replace with function body.


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body.name == "Fish":
		var game_controller = get_node("/root/Game_Controller")
		get_node("/root/Game_Controller").incrementScore()
		self.queue_free()
