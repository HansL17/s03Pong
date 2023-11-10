extends Node2D

onready var player_score_label = $PlayerScore
onready var start_label = $StartLabel
onready var lose_label = $GameOver
onready var easy_button = $ButtonEasy
onready var medium_button = $ButtonMedium
onready var hard_button = $ButtonHard
onready var easy_start_button = $EasyStart
onready var medium_start_button = $ButtonMedium2
onready var hard_start_button = $ButtonHard2
onready var ball = $Ball
onready var screen_size = get_viewport().size
var player_score = 0



func _ready():
	easy_start_button.hide()
	medium_start_button.hide()
	hard_start_button.hide()
	ball.stop_ball()
	lose_label.hide()
	player_score_label.text = "0"

func _on_BottomWall_body_entered(body):
	ball.stop_ball()
	start_label.visible = true
	lose_label.visible = true
	easy_button.visible = true
	medium_button.visible = true
	hard_button.visible = true
	ball.position = Vector2(screen_size.x / 2, screen_size.y / 5)
	
	
func _on_Ball_body_entered(body):
	if body.name == "Paddle":
		player_score += 1
		update_score_labels()

func update_score_labels():
	player_score_label.text = str(player_score)


func _on_ButtonEasy_pressed():
	
	easy_start_button.visible = true


func _on_EasyStart_pressed():
	ball.easy_ball()
	start_label.hide()
	lose_label.hide()
	
	easy_button.hide()
	medium_button.hide()
	hard_button.hide()
	easy_start_button.hide()
	player_score = 0
	update_score_labels()



func _on_ButtonMedium2_pressed():
	ball.medium_ball()
	start_label.hide()
	lose_label.hide()
	easy_button.hide()
	medium_button.hide()
	hard_button.hide()
	medium_start_button.hide()
	player_score = 0
	update_score_labels()

func _on_ButtonHard2_pressed():
	ball.hard_ball()
	start_label.hide()
	lose_label.hide()
	easy_button.hide()
	medium_button.hide()
	hard_button.hide()
	hard_start_button.hide()
	player_score = 0
	update_score_labels()


func _on_ButtonMedium_pressed():
	medium_start_button.visible = true


func _on_ButtonHard_pressed():
	hard_start_button.visible = true
