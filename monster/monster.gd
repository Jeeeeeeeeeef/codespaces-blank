class_name Monster
extends Node
# Static Fields # Variables that are inherent to the class
#  required
static var display_name: String
static var id: int
#  planned
static var attack_at_level_pool: Dictionary[int, Attack]
static var buff_at_level_pool: Dictionary[int, Buff]

# Fields # Variables that are inherent to the object
#  required
var buffs: Buff[]
var attacks: Attack[]
var nickname: String
var item: Item
var element: Element[]
const bond_max = 500
# bond is an integer from 1-bond_max
var bond: int
# level is an integer from 1-100
var level: int
#  planned

# Methods 
#  required
# 	default constructor
#  planned
# 	random constructor
func level_up():
    level++
    learn_attack(level)
func attack(num):
    # attacks is an array that is accessed using an index value, 
    # meaning it uses some integer from 0 to the size of the array 
    print("WIP " + attacks[num])

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

