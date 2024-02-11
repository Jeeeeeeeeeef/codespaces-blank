class_name Windy
extends Element


static func _static_init():
	name = "Windy"
	offense_modifiers = {
		Astral: Modifiers.WEAK,
		Fiery: Modifiers.STRONG,
		Fungal: Modifiers.STRONG,
		Metallic: Modifiers.WEAK,
		Natural: Modifiers.STRONG
	}

