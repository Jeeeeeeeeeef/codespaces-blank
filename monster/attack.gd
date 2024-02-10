class_name Attack

static var display_name: String
static var category: Category
static var element
enum Category {
	MELEE,
	MAGIC,
	BUFF
}
var target: Enemy

func _to_string():
	return display_name

class Melee:
	extends Attack
	static var base_damage: int

	static func _static_init():
		category = Category.MELEE 
	
	func start(enemy: Enemy):
		target = enemy
	
	func apply_damage():
		var damage = base_damage * element.calculate_offensive_modifier(target.element)
		target.hp = clamp(target.hp - damage, 0, target.max_health)

class Magic:
	extends Attack
	static var base_damage: int
	static func _static_init():
		category = Category.MAGIC 
class Buff:
	extends Attack
	static func _static_init():
		category = Category.BUFF 
	
