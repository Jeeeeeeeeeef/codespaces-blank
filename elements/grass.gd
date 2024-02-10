class_name Grass
extends Element


static func _static_init():
	name = "Grass"
	offense_modifiers = {
		Grass: Modifiers.WEAK
	}
	print(Grass.calculate_offensive_modifier(Grass))

