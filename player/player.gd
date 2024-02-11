extends CharacterBody2D
class_name Player

var player_name: String
var health: int
var base_health: int
var max_health: int
var base_max_health: int
var speed: int = 300
var attack: int

const JUMP_VELOCITY = -400.0

@export var favorite_monster_path: NodePath
@onready var favorite_monster = get_node(favorite_monster_path)

func _ready():
	favorite_monster.following = self
	favorite_monster.following_order = 1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = -1.0
var distance = 30.0
var jumped = false
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	jumped = false
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jumped = true
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_direction = Input.get_axis("ui_left", "ui_right")
	if input_direction:
		direction = input_direction
		velocity.x = input_direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
