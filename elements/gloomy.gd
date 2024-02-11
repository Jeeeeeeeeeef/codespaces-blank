class_name Gloomy
extends Element


static func _static_init():
	name = "Gloomy"
	offense_modifiers = {
		Astral: Modifiers.STRONG,
		Gloomy: Modifiers.WEAK,
		Light: Modifiers.STRONG,
		Mythical: Modifiers.WEAK
	}

