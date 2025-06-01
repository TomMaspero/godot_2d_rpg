# AttackState.gd
extends "res://Scripts/States/BaseState.gd"

@onready var Player = get_parent().get_parent()
@onready var animationTree = get_parent().get_parent().get_node("AnimationTree")

func enter_state():
	self.set_physics_process(true)
	animationTree["parameters/conditions/attack"] = true
	
func _physics_process(delta):
	Player.velocity = Player.velocity.move_toward(Vector2.ZERO, Player.FRICTION/2 * delta)
	Player.move_and_slide()

func attack_animation_finished():
	get_parent().change_state("MoveState")

func exit_state():
	animationTree["parameters/conditions/attack"] = false
	self.set_physics_process(false)
	
