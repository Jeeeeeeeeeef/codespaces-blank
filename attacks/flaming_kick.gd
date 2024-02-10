extends Attack.Melee
class_name FlamingKick
static func _static_init():
	super._static_init()
	display_name = "Flaming Kick"
	base_damage = 10
	element = Fiery

