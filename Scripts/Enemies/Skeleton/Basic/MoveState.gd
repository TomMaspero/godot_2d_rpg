# MoveState.gd for the Basic Skeleton Enemy
extends "res://Scripts/States/BaseState.gd"

@onready var Skeleton = get_parent().get_parent()
@onready var AnimationHandler = Skeleton.get_node("AnimationHandler")

var input_vector = Vector2.ZERO

func enter_state():
	pass
	
func update(delta):
	pass
	#input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	#input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	#input_vector = input_vector.normalized() 
	#if input_vector != Vector2.ZERO:
		#Player.velocity = Player.velocity.move_toward(input_vector * Player.MAX_SPEED, Player.ACCELERATION * delta)
	#else:
		#Player.velocity = Player.velocity.move_toward(Vector2.ZERO, Player.FRICTION * delta)
	#Player.move_and_slide()
	#AnimationHandler.update_animation_parameters(Player.velocity, input_vector)
	#if Input.is_action_just_pressed("Attack"):
		#get_parent().change_state("AttackState")

func exit_state():
	Skeleton = null
