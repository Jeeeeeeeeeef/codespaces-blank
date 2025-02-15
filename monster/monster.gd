extends CharacterBody2D
class_name Monster
# Static Fields # Variables that are inherent to the class
static var display_name: String
static var id: int
static var attack_at_level_pool: Dictionary
static var buff_at_level_pool: Dictionary
static var elements: Array[Element]
static var speed: int = 300
# Fields # Variables that are inherent to the object
var passive: Passive
var attacks: Array[Attack]
var nickname: String
var item: Item
var attack: int
var following: Player
var following_order: int
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
enum MovementType{
	FLYING,
	WALKING
}
const JUMP_VELOCITY = -400.0
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if following:
		var desired_distance = following.position.x+following.distance * -sign(following.direction)
		var desired_position = position.x - desired_distance 
		velocity.x = 0
		if following.jumped:
			velocity.y = JUMP_VELOCITY
		if abs(desired_position) > 10:
			velocity.x =  speed * - sign(desired_position)
		move_and_slide()

		
const bond_max = 500
# bond is an integer from 1-bond_max
var bond: int = 1
# level is an integer from 1-100
@export var level: int = 1
func _init():
	for current_level in range(1,level + 1):
		learn_attack(current_level)

func level_up():
	level += 1
	learn_attack(level)
func use_attack(index: int, enemy: Enemy):
	# attacks is an array that is accessed using an index value, 
	# meaning it uses some integer from 0 to the size of the array 
	print("WIP " + attacks[index].to_string())
	# check what attack is picked
	var attack = attacks[index]
	# match some sort of enum to check if the attack is offensive or defensive
	match attack.category:
		Attack.Category.MELEE:
			#walk towards enemy's hurtbox and punt it once hitbox collides with it
			attack.start(enemy)
		Attack.Category.MAGIC:
			pass
			#shoot projectile at enemy
			#check if it hits enemys hurtbox
			#scatter if it hits terrain
		Attack.Category.BUFF:
			pass
			#apply buff to the player
	# lower enemy's health by the attack's base damage * elemental modifier * attack/100



func learn_attack(level):
	# attack_at_level_pool is a dictionary that is accessed using a key
	# meaning uses some integer that is in its keys
	# in this case the key is also an integer
	# i am also adding the value of the key in attack_at_level_pool to the attacks array in this example
	if not attack_at_level_pool.find_key(level):
		return 1
	var attack = attack_at_level_pool[level]
	if attack != null:
		attacks.append(attack)
	# you can add a key-value pair like this
	# attack_at_level_pool[100] = Overgrowth.new();
