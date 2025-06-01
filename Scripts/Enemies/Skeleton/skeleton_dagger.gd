extends CharacterBody2D

#@onready var animationPlayer = $AnimationPlayer
#@onready var animationTree : AnimationTree = $AnimationTree
@onready var state_machine = $StateMachine
@onready var stats = $Stats

@export var ACCELERATION = 1750
@export var MAX_SPEED = 140
@export var FRICTION = 1000

func _ready():
	pass

func _physics_process(delta):
	pass
