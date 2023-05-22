extends KinematicBody2D

var movement_speed = 200
export (int) var health = 1
var bulletSource = preload("res://Bullet/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
	difficulty_multiplier(6)

func _process(delta):
	if GlobalVariables.automaticFiring:
		if Input.is_action_pressed("fire"):
			if GlobalVariables.bulletInstanceCount < 30:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x, position.y-50)
				get_tree().get_root().add_child(bulletInstance)
				yield(get_tree().create_timer(0.7), "timeout")
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
		
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x > 10:
			move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x < 1200:
			move_and_collide(Vector2(movement_speed * delta, 0))
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed * delta))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed * delta))

var hardness_level = 4

func difficulty_multiplier(score):
	var final_score
	if hardness_level == 1:
		final_score = score * 2
	elif hardness_level == 2:
		final_score = score * 4
	elif hardness_level == 3:
		final_score = score * 8
	elif hardness_level == 4:
		final_score = score * 16
	else:
		final_score = 0
	print("final score",final_score,".")

func reduceHealth():
	health -= 1
	if health == 0:
		get_tree().change_scene("res://Menu/Menu.tscn")
