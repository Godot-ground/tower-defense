extends Area2D

var cls 
@export var speed = 300
@export var animation = Animation
@export var damage=1
@export var health=100
func _ready():
	cls =  Storm_troop.new(speed,animation,damage,health)
	print(cls.getInfo())



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
