extends ColorRect

@onready var highscore_label = $HighscoreLabel

func _ready():
	var highscore = SaveAndLoad.load_highscore()
	if highscore == null: return
	highscore_label.text = "Hightscore: " + str(highscore)

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://start_menu.tscn")
