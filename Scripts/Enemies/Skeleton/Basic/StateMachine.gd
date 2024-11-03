# StateMachine.gd for the Basic Skeleton Enemy
extends Node

var current_state : Node = null

func _ready() -> void:
	change_state("MoveState")

func change_state(state_name: String):
	if current_state:
		current_state.exit_state()
		current_state.queue_free()
	current_state = load("res://Scripts/Enemies/Skeleton/Basic/" + state_name + ".gd").new()
	add_child(current_state)
	current_state.enter_state()
	
func update(delta):
	if current_state:
		current_state.update(delta)
	
