extends Node2D

var current_ship: KinematicBody2D = null

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			print("Clicked on screen!")
			
			setup_target_position(event.global_position)
			
func setup_target_position(position):
	if not current_ship:
		print("Please click on a ship first, dude (or dudette).")
		return
		
	current_ship.target_position = position
	current_ship.agent.set_target_location(position)
		
func connect_ship_signals(instance):
	instance.connect("ship_clicked_on", self, "on_ship_clicked")
	
func on_ship_clicked(instance):
	current_ship = instance
	print(current_ship)
	
