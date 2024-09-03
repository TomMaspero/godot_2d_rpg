# AttackState.gd
extends "res://Scripts/States/BaseState.gd"

@onready var Player = get_parent().get_parent()
@onready var animationTree = get_parent().get_parent().get_node("AnimationTree")

func enter_state():
	animationTree["parameters/conditions/attack"] = true
	
func update(delta):
	Player.velocity = Player.velocity.move_toward(Vector2.ZERO, Player.FRICTION/2 * delta)
	Player.move_and_slide()

func attack_animation_finished():
	get_parent().change_state("MoveState")

func exit_state():
	animationTree["parameters/conditions/attack"] = false
	Player = null
	
