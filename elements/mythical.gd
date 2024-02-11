class_name Mythical
extends Element


static func _static_init():
	name = "Mythical"
	offense_modifiers = {
		Astral: Modifiers.STRONG,
		Fiery: Modifiers.WEAK,
		Gloomy: Modifiers.STRONG,
		Metallic: Modifiers.WEAK
	}

