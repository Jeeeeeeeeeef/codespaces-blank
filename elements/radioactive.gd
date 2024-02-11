class_name Radioactive
extends Element


static func _static_init():
	name = "Radioactive"
	offense_modifiers = {
		Astral: Modifiers.STRONG,
		Earth: Modifiers.WEAK,
		Fiery: Modifiers.WEAK,
		Gloomy: Modifiers.STRONG,
		Metallic: Modifiers.WEAK,
		Mythical: Modifiers.STRONG,
		Radioactive: Modifiers.WEAK,
		Water: Modifiers.WEAK
	}
