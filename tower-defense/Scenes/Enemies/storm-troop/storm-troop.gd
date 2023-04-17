extends Node


# Called when the node enters the scene tree for the first time.
var StormTroop= load("res://Codes/Enemies/storm-troop/storm-troop.gd")
@export var speed = 300
@export var animation = Animation
@export var damage=1
@export var health=100
func _ready():
	var fd=StormTroop.StormTroop.new(speed , animation , damage,health)
	print(fd.getInfo())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
