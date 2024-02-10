class_name Monster
extends Node
# Static Fields # Variables that are inherent to the class
static var display_name: String
static var id: int
static var attack_at_level_pool: Dictionary
static var buff_at_level_pool: Dictionary
static var elements: Array[Element]
# Fields # Variables that are inherent to the object
var buffs: Array[Buff]
var attacks: Array[Attack]
var nickname: String
var item: Item

const bond_max = 500
# bond is an integer from 1-bond_max
var bond: int
# level is an integer from 1-100
var level: int

func level_up():
	level += 1
	learn_attack(level)
func attack(num):
	# attacks is an array that is accessed using an index value, 
	# meaning it uses some integer from 0 to the size of the array 
	print("WIP " + attacks[num].to_string())

func learn_attack(level):
	# attack_at_level_pool is a dictionary that is accessed using a key
	# meaning uses some integer that is in its keys
	# in this case the key is also an integer
	# i am also adding the value of the key in attack_at_level_pool to the attacks array in this example
	var attack = attack_at_level_pool[level]
	if attack != null:
		attacks.append(attack)
	# you can add a key-value pair like this
	# attack_at_level_pool[100] = Overgrowth.new();

