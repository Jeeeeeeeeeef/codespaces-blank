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


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = -1.0;
var distance = 30.0;

func _physics_process(delta):
	if favorite_monster:
		if direction < 0:
			favorite_monster.velocity.x = clamp(-favorite_monster.position.x + (position.x+distance),-1,1) * speed
		else:
			favorite_monster.velocity.x = clamp(-favorite_monster.position.x + (position.x-distance),-1,1) * speed
		if abs(favorite_monster.position.x - position.x) < distance:
			favorite_monster.velocity.x = 0
		if not favorite_monster.is_on_floor():
			favorite_monster.velocity.y += gravity * delta
		if favorite_monster.is_on_floor() and favorite_monster.position.y+ distance > position.y + 50:
			favorite_monster.velocity.y = JUMP_VELOCITY
		favorite_monster.move_and_slide()
		
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_direction = Input.get_axis("ui_left", "ui_right")
	if input_direction:
		direction = input_direction
		velocity.x = input_direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
