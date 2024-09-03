extends CharacterBody2D

@onready var animationPlayer = $AnimationPlayer
@onready var animationTree : AnimationTree = $AnimationTree
@onready var state_machine = $StateMachine

@export var ACCELERATION = 1750
@export var MAX_SPEED = 100
@export var FRICTION = 1000

func _ready():
	state_machine = $StateMachine

func _physics_process(delta):
	state_machine.update(delta)
