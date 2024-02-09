class_name Fire
extends Element


static func _static_init():
	name = "Fire"
    offense_modifiers = {
        Fire: ModifierState.WEAK
    }
func _init():
	print(monster_name)
