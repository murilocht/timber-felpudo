extends Node

onready var felpudo = get_node("Felpudo")
#onready var camera = get_node("Camera")

func _ready():
	set_process_input(true)

func _input(event):
	#event = camera.make_input_local(event)
	if event is InputEventMouseButton:
		if event.position.x < 360:
			felpudo.esq()
		else:
			felpudo.dir()
		
		felpudo.bater()
