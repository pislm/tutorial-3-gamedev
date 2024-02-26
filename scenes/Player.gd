extends KinematicBody2D

export (int) var speed = 400
export (int) var GRAVITY = 1200
export (int) var jump_speed = -600

const UP = Vector2(0, -1)

var velocity = Vector2()
var jumps = 0

func get_input():
	velocity.x = 0

	if is_on_floor():
		jumps = 0
	if Input.is_action_just_pressed("ui_up") and jumps < 2:
		velocity.y = jump_speed
		jumps += 1
	if Input.is_action_pressed('ui_right'):
		velocity.x += speed
	if Input.is_action_pressed('ui_left'):
		velocity.x -= speed

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	get_input()
	velocity = move_and_slide(velocity, UP)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
