extends Monster

static func _static_init():
	display_name = "Reggaewood"

	id = 1
	attack_at_level_pool = {
		1: TreePunch
	}
