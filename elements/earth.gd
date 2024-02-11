class_name Earth
extends Element


static func _static_init():
	name = "Earth"
	offense_modifiers = {
		Astral: Modifiers.WEAK,
		Fiery: Modifiers.STRONG,
		Fungal: Modifiers.WEAK,
		Metallic: Modifiers.STRONG,
		Natural: Modifiers.WEAK,
		Radioactive: Modifiers.STRONG,
		Windy: Modifiers.WEAK
	}

