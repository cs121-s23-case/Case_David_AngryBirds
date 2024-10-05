extends Node2D
var score=0
@export var txtScore : Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func incrementScore():
	score+=1
	var tempText = str(score)
	$score.text = tempText

func CheckAndCreateBoost():
	var tempText = str(score)
	if score>=20:
		$scoreLabel.text = tempText +" Woah, you got 20! Nice job! Maybe Ill give you a cookie or something!"

func returnScore():
	return score
