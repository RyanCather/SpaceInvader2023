extends Node2D

var speed = -100

func _ready():
	
	set_physics_process(true)
	
	
func _physics_process(delta):
#	print ("enemies")
	global_position.x += speed * delta
#	print(global_position.x)
#	pass
	#move_and_collide(Vector2(speed * delta, 0))


