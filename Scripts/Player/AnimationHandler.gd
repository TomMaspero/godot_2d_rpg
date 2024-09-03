# AnimationHandler.gd
extends Node

@onready var animationPlayer = get_parent().get_node("AnimationPlayer")
@onready var animationTree : AnimationTree = get_parent().get_node("AnimationTree")

func _ready():
	animationTree.active = true

func update_animation_parameters(velocity, input_vector):
	if(velocity == Vector2.ZERO):
		animationTree["parameters/conditions/idle"] = true
		animationTree["parameters/conditions/isRunning"] = false
	else:
		animationTree["parameters/conditions/idle"] = false
		animationTree["parameters/conditions/isRunning"] = true
	if(input_vector != Vector2.ZERO):
		animationTree["parameters/Idle/blend_position"] = input_vector
		animationTree["parameters/Run/blend_position"] = input_vector
		animationTree["parameters/Attack/blend_position"] = input_vector
