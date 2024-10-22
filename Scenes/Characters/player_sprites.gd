extends Node2D

@onready var bodySprite = $Body
@onready var hairSprite = $Hair
@onready var torsoSprite = $Torso
@onready var legsSprite = $Legs
@onready var feetSprite = $Feet
@onready var glovesSprite = $Gloves
@onready var shouldersSprite = $Shoulders
@onready var armsSprite = $Arms
#
#const composite_sprites = preload("res://Scripts/Utils/CompositeSprites.gd")

var curr_body: int = 0
var curr_hair: int = 4
var curr_torso: int = 3
var curr_legs:  int = 1
var curr_feet: int = 1
var curr_gloves: int = 1
var curr_shoulders: int = 1
var curr_arms: int = 1

var body_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/lpcfemalelight.png")
}

var hair_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/hair/Female_Hair_braid_black.png"),
	1 : preload("res://Assets/Sprites/Player/hair/Female_Hair_braid_blond2.png"),
	2 : preload("res://Assets/Sprites/Player/hair/Female_Hair_braid_blond.png"),
	3 : preload("res://Assets/Sprites/Player/hair/long_straight_hair_female_ashblonde.png"),
	4 : preload("res://Assets/Sprites/Player/hair/Female_Hair_braid2_ash.png")
}

var torso_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/torso/female/blouse_white.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/torso/female/leather_brown.png"),
	2 : preload("res://Assets/Sprites/Player/clothes/torso/female/legion_silver.png"),
	3 : preload("res://Assets/Sprites/Player/clothes/torso/female/plate_silver.png")
}

var legs_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/legs/female/leggins_black.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/legs/female/plate_silver.png"),
	2 : preload("res://Assets/Sprites/Player/clothes/legs/female/skirt_blue.png")
}

var feet_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/feet/female/boots_black.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/feet/female/plate_silver.png")
}

var gloves_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/gloves/female/brown.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/gloves/female/slate.png")
}

var shoulders_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/shoulders/female/legion_silver.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/shoulders/female/plate_silver.png")
}

var arms_spritesheet = {
	0 : preload("res://Assets/Sprites/Player/clothes/arms/female/bracers_silver.png"),
	1 : preload("res://Assets/Sprites/Player/clothes/arms/female/plate_silver.png")
}

func _ready():
	bodySprite.texture = body_spritesheet[curr_body]
	hairSprite.texture = hair_spritesheet[curr_hair]
	torsoSprite.texture = torso_spritesheet[curr_torso]
	legsSprite.texture = legs_spritesheet[curr_legs]
	feetSprite.texture = feet_spritesheet[curr_feet]
	glovesSprite.texture = gloves_spritesheet[curr_gloves]
	shouldersSprite.texture = shoulders_spritesheet[curr_shoulders]
	armsSprite.texture = arms_spritesheet[curr_arms]
	

#func _on_change_hair_pressed() -> void:
	#curr_hair = (curr_hair + 1) % hair_spritesheet.size()
	#hairSprite.texture = hair_spritesheet[curr_hair]
	#
