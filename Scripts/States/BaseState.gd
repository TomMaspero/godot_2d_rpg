extends Node

func enter_state():
	self.set_physics_process(true)

func exit_state():
	self.set_physics_process(false)
