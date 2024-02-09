class_name Element


static var name: String
static var color: Color

enum ModifierState {
    WEAK,
    NEUTRAL,
    STRONG
}
# make an array of elements that give a 2.0 or something modifier
# or a dictionary!!!

# Dictionary[Key, Value]
static var defense_modifiers: Dictionary[Element, ModifierState]
static var offense_modifiers: Dictionary[Element, ModifierState]

# take another type as a parameter and return the advantage
func calculate_offensive_modifier(other_element: Element):
    var modifier = 1
    match offense_modifiers[other_element]:
        WEAK: # you may return a float here
            modifier = * 0.8
        STRONG:
            modifier = * 1.25            