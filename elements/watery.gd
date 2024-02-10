class_name Watery
extends Element


static func _static_init():
	name = "Watery"
	offense_modifiers = {
		Fiery: Modifiers.STRONG,
		Watery: Modifiers.WEAK
	}

