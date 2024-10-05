class_name Main_Menu
extends Control
@onready var level_1: Button = $Level1 as Button
@onready var level_2: Button = $Level2 as Button
@onready var level_3: Button = $Level3 as Button
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene
@onready var level2 = preload("res://scenes/Level2.tscn") as PackedScene
@onready var level3 = preload("res://scenes/Level_3.tscn") as PackedScene
@onready var Main_Menu = preload("res://scenes/main_menu.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	level_1.button_down.connect(on_level_1_pressed)
	level_2.button_down.connect(on_level_2_pressed)
	level_3.button_down.connect(on_level_3_pressed)
#Replace with function body.


func on_level_1_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
func on_level_2_pressed() -> void:
	get_tree().change_scene_to_packed(level2)
	
func on_level_3_pressed() -> void:
	get_tree().change_scene_to_packed(level3)

func _process(delta):
	if Input.is_action_just_pressed("escape"):
		get_tree().quit()
