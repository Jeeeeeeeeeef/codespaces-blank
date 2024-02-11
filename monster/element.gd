class_name Element


static var name: String
static var color: Color

enum Modifiers {
	WEAK,
	STRONG,
	NEUTRAL

}
# make an array of elements that give a 2.0 or something modifier
# or a dictionary!!!

# Dictionary[Key, Value]
static var defense_modifiers: Dictionary
static var offense_modifiers: Dictionary

# take another type as a parameter and return the advantage
static func calculate_offensive_modifier(other_element):
	if not offense_modifiers.find_key(other_element):
		return 1
	match offense_modifiers[other_element]:
		Modifiers.WEAK: 
			return 0.8
		Modifiers.STRONG:
			return 1.25   

