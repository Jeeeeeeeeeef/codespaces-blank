class_name Water
extends Element


static func _static_init():
	name = "Water"
	offense_modifiers = {
		Fiery: Modifiers.STRONG,
		Water: Modifiers.WEAK,
		Astral: Modifiers.WEAK,
		Earth: Modifiers.STRONG,
		Natural: Modifiers.WEAK
		
	}

