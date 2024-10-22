extends CharacterBody2D

@onready var animationPlayer = $AnimationPlayer
@onready var animationTree : AnimationTree = $AnimationTree
@onready var state_machine = $StateMachine

@export var ACCELERATION = 1750
@export var MAX_SPEED = 140
@export var FRICTION = 1000

# MOVE TO ANOTHER SCRIPT ##########################################

#@onready var bodySprite = $CompositeSprites/Body
#@onready var hairSprite = $CompositeSprites/Hair
#@onready var torsoSprite = $CompositeSprites/Torso
#@onready var pantsSprites = $CompositeSprites/Pants
#@onready var shoesSprites = $CompositeSprites/Shoes
#@onready var shoulderSprites = $CompositeSprites/Shoulders
#@onready var glovesSprites = $CompositeSprites/Gloves
#@onready var armsSprites = $CompositeSprites/Arms

#const composite_sprites = preload("res://Scripts/Utils/CompositeSprites.gd")

##################################################################

func _ready():
	state_machine = $StateMachine

func _physics_process(delta):
	state_machine.update(delta)
