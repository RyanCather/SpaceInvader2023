extends HBoxContainer

enum MODES {simple, empty, partial}

var heart_full = preload("res://Images/hearts/hud_heartFull.png")
var heart_empty = preload("res://Images/hearts/hud_heartEmpty.png")
var heart_half = preload("res://Images/hearts/hud_heartHalf.png")

export (MODES) var mode = MODES.partial

func update_health(value):
	match mode:
		MODES.simple:
			update_simple(value)
		MODES.empty:
			update_empty(value)
		MODES.partial:
			update_partial(value)

func update_simple(value):
	for i in get_child_count():
		get_child(i).visible = value > i

func update_empty(value):
	for i in get_child_count():
		if value > i:
			get_child(i).texture = heart_full
		else:
			get_child(i).texture = heart_empty
			
func update_partial(value):
	for i in get_child_count():
		if value > i * 2 + 1:
			get_child(i).texture = heart_full
		elif value > i * 2:
			get_child(i).texture = heart_half
		else:
			get_child(i).texture = heart_empty
