class_name Astral
extends Element


static func _static_init():
	name = "Astral"
	offense_modifiers = {
		Astral: Modifiers.STRONG,
		Earth: Modifiers.STRONG,
		Windy: Modifiers.STRONG,
		Metallic: Modifiers.WEAK,
		Radioactive: Modifiers.WEAK,
		Mythical: Modifiers.WEAK
	}

