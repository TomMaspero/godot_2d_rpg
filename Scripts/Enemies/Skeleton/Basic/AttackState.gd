# AttackState.gd For the Basic Skeleton Enemy
extends "res://Scripts/States/BaseState.gd"

@onready var Skeleton = get_parent().get_parent()
@onready var animationTree = get_parent().get_parent().get_node("AnimationTree")

func enter_state():
	animationTree["parameters/conditions/attack"] = true
	
func update(delta):
	Skeleton.velocity = Skeleton.velocity.move_toward(Vector2.ZERO, Skeleton.FRICTION/2 * delta)
	Skeleton.move_and_slide()

func attack_animation_finished():
	get_parent().change_state("MoveState")

func exit_state():
	animationTree["parameters/conditions/attack"] = false
	Skeleton = null
	
