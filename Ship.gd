extends KinematicBody2D

export (String) var ship_name = "Ship " + str(self.get_instance_id())

signal ship_clicked_on

onready var agent = $NavigationAgent2D
onready var sprite = $ShipA

var velocity = Vector2.ZERO
var speed = 800
var target_position = null

func _ready():
	yield(owner, "ready")
	
	get_tree().call_group("Level", "connect_ship_signals", self)
