class_name Fungal
extends Element


static func _static_init():
	name = "Fungal"
	offense_modifiers = {
		Astral: Modifiers.WEAK,
		Fiery: Modifiers.WEAK,
		Fungal: Modifiers.WEAK,
		Gloomy: Modifiers.STRONG,
		Metallic: Modifiers.WEAK,
		Mythical: Modifiers.STRONG,
		Natural: Modifiers.STRONG,
		Windy: Modifiers.WEAK
	}
