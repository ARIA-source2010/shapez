extends Node



@export var max_hp : int  
@export var current_hp : int

func _ready() -> void:
	max_hp = 5
	current_hp = max_hp

func _physics_process(_delta: float) -> void:
	if current_hp > max_hp:
		current_hp = max_hp
	else :
		current_hp = current_hp
	
	if current_hp == 0 :
		kill_player()


func damage_player (hit_vlaue : int) :
	if current_hp > 0:
		current_hp -= hit_vlaue
	else :
		kill_player()


func kill_player () :
	get_tree().quit() 
