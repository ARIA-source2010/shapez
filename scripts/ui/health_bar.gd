extends HBoxContainer

enum MODES {simple}

var heart_full = preload("res://resources/images/health_point.png")


@export var mode: MODES = MODES.simple

func update_health(value):
	match mode:
		MODES.simple:
			update_simple(value)

func update_simple(value):
	for i in get_child_count():
		get_child(i).visible = value > i
