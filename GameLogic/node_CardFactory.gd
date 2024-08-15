extends Node

# Define a card structure with attributes like ID, name, effects, etc.
class Card:
	var id
	var name
	var effects

	func _init(_id, _name, _effects):
		id = _id
		name = _name
		effects = _effects

# Create a function to generate a new card.
func create_card(id, name, effects):
	var new_card = Card.new(id, name, effects)
	return new_card
