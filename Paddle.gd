extends KinematicBody2D

var speed = 800

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	move_and_slide(velocity)
