extends CharacterBody2D

@export var ACCELERATION = 1750
@export var MAX_SPEED = 100
@export var FRICTION = 1000

enum {
	MOVE,
	ATTACK
}

var state = MOVE

@onready var animationPlayer = $AnimationPlayer
@onready var animationTree : AnimationTree = $AnimationTree
#@onready var blinkAnimationPLayer = $BlinkAnimationPlayer
#@onready var swordHitbox = $HitboxPivot/SwordHitbox
#@onready var hurtbox = $Hurtbox

func _ready():
	#self.stats.connect("no_health", queue_free) 
	animationTree.active = true
	#swordHitbox.knockback_vector = roll_vector;
	
var input_vector = Vector2.ZERO #I had to make it a global variable because of the update_animation_parameters function 

func _physics_process(delta):
	match state:
		MOVE:
			move_state(delta);
		#ATTACK:
			#attack_state(delta);
	
func _process(_delta):
	update_animation_parameters()
	
func update_animation_parameters():
	if(velocity == Vector2.ZERO):
		animationTree["parameters/conditions/idle"] = true
		animationTree["parameters/conditions/isRunning"] = false
	else:
		animationTree["parameters/conditions/idle"] = false
		animationTree["parameters/conditions/isRunning"] = true
	if(input_vector != Vector2.ZERO):
		animationTree["parameters/Idle/blend_position"] = input_vector
		animationTree["parameters/Run/blend_position"] = input_vector
		#animationTree["parameters/Attack/blend_position"] = input_vector
		#animationTree["parameters/Roll/blend_position"] = input_vector
	#if(state==ATTACK):
		#animationTree["parameters/conditions/attack"] = true;
	#else:
		#animationTree["parameters/conditions/attack"] = false;
	#if(state==ROLL):
		#animationTree["parameters/conditions/isRolling"] = true;
	#else:
		#animationTree["parameters/conditions/isRolling"] = false;
		
func move_state(delta):
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized() 
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		#roll_vector = input_vector;
		#swordHitbox.knockback_vector = input_vector;
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	#if Input.is_action_just_pressed("attack"):
		#state = ATTACK;
	move_and_slide()

#func attack_state(delta):
	#velocity = velocity.move_toward(Vector2.ZERO, FRICTION/2 * delta) #With these 2 lines the character moves forward a little bit instead of coming to a sudden stop
	#move_and_slide()
	
