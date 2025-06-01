extends Node

@onready var current_state : Node = null
@onready var states = {
	"AttackState" = $AttackState,
	"ChaseState" = $ChaseState,
	"IdleState" = $IdleState,
	"WanderState" = $WanderState
}

func _ready():
	change_state("IdleState")

func change_state(state_name: String):
	if current_state:
		current_state.exit_state()
	
	current_state = states[state_name]
	current_state.enter_state()
