extends Node3D

var card_factory 
var dice_factory 

# Called when the node enters the scene tree for the first time.
func _ready():
	card_factory = preload("res://GameLogic/node_card_factory.tscn").instance()
	dice_factory = preload("res://GameLogic/node_dice_factory.tscn").instance()
	
	add_child(card_factory)
	add_child(dice_factory)

	# Create a card with ID 1, name "Example Card", and an array of effects.
	var card = card_factory.create_card(1, "Example Card", ["effect1", "effect2"])
	print(card.name)  # Output: Example Card

	# Create a dice with ID 1 and 6 sides.
	var dice = dice_factory.create_dice(1, 6)
	print(dice.sides)  # Output: 6


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
