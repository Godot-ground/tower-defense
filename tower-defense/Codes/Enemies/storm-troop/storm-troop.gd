const EnemyModel=preload( "res://Codes/Core/enemy.gd" )
class StormTroop extends EnemyModel.Enemy:
	
	func _init(speed=null ,animation=null ,damage=null ,health=null):
		if(speed):spd=speed
		if(animation):ant=animation
		if(damage):dmg=damage
		if(health):hlt=health
