extends KinematicBody2D

var speed = 500
var velocity = Vector2.ZERO

func _ready():
	inizialize_ball_direction()

func inizialize_ball_direction():
	randomize()
	var x_array = [-1, 1]
	var y_array = [-0.5, 0.5]
	velocity.x = x_array[randi() % 2]
	velocity.y = y_array[randi() % 2]
	
func _physics_process(delta):
	var colliding = move_and_collide(velocity * speed * delta) 
	if colliding:
		velocity = velocity.bounce(colliding.normal)

func stop_ball():
	speed = 0

	
func easy_ball():
	speed = 450


func medium_ball():
	speed = 1100
	
func hard_ball():
	speed = 1500
	
