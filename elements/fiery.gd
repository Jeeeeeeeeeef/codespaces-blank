class_name Fiery
extends Element


static func _static_init():
	name = "Fiery"
	offense_modifiers = {
		Fiery: Modifiers.WEAK,
		Watery: Modifiers.STRONG
	}

