extends Monster

static func _static_init():
	display_name = "Arachneous"
	id = 2
	attack_at_level_pool = {
		1: FlamingKick
	}
