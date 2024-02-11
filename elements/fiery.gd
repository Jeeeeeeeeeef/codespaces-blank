class_name Fiery
extends Element


static func _static_init():
	name = "Fiery"
	offense_modifiers = {
		Fiery: Modifiers.WEAK,
		Water: Modifiers.WEAK,
		Astral: Modifiers.WEAK,
		Earth: Modifiers.WEAK,
		Fungal: Modifiers.STRONG,
		Metallic: Modifiers.STRONG,
		Natural: Modifiers.STRONG
	}

