extends Node2D
var score=0
@export var txtScore : Label
@onready var Main_Menu = preload("res://scenes/main_menu.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		get_tree().quit()

func incrementScore():
	score+=1
	var tempText = str(score)
	$score.text = tempText
	if score == (2):
		get_tree().change_scene_to_packed(Main_Menu)

func CheckAndCreateBoost():
	var tempText = str(score)
	if score>=20:
		$scoreLabel.text = tempText +" Woah, you got 20! Nice job! Maybe Ill give you a cookie or something!"

func returnScore():
	return score
