extends Buff
func apply(player):
    player.max_health *= 1.25
    player.health *= 1.25

func remove(player):
    player.max_health *= 0.8
    player.health = clamp(0.8 * health, 1, max_health)
    #clamping to make sure the player doesnt die from unequipping it, not sure if necessary