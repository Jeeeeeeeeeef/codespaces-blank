class_name Metallic
extends Element


static func _static_init():
	name = "Metallic"
	offense_modifiers = {
		Fiery: Modifiers.WEAK,
		Metallic: Modifiers.WEAK,
		Mythical: Modifiers.STRONG,
		Radioactive: Modifiers.STRONG,
		Water: Modifiers.STRONG
	}
