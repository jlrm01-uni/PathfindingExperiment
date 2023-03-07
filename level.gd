extends Node2D

var current_ship: KinematicBody2D = null

func _ready():
	pass

func connect_ship_signals(instance):
	instance.connect("ship_clicked_on", self, "on_ship_clicked")
	
func on_ship_clicked(instance):
	current_ship = instance
	print(current_ship)
	
