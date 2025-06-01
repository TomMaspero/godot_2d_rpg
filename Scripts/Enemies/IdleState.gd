extends "res://Scripts/States/BaseState.gd"

@onready var Mob = get_parent().get_parent()
	
func _physics_process(delta):
	Mob.velocity = Mob.velocity.move_toward(Vector2.ZERO, Mob.FRICTION * delta)
