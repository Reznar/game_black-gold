extends Node2D

onready var ink_scn = load("res://ink.tscn")

func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		fire(get_local_mouse_position())

func fire(pos):
	var a = ink_scn.instance()
	a.vector = pos.normalized()
	add_child(a)