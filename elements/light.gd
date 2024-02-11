class_name Light
extends Element


static func _static_init():
	name = "Light"
	offense_modifiers = {
		Astral: Modifiers.STRONG,
		Earth: Modifiers.WEAK,
		Fungal: Modifiers.STRONG,
		Gloomy: Modifiers.STRONG,
		Metallic: Modifiers.WEAK,
		Natural: Modifiers.WEAK,
		Water: Modifiers.WEAK
	}
