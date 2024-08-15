extends Node

# Define a dice structure with attributes like ID, sides, etc.
class Dice:
	var id
	var sides

	func _init(_id, _sides):
		id = _id
		sides = _sides

# Create a function to generate a new dice.
func create_dice(id, sides):
	var new_dice = Dice.new(id, sides)
	return new_dice
	
func load_dice_from_json(id):
	var json = JSON.new()
	var dice_file = FileAccess.open("user://GameData/Dices.json", FileAccess.READ)
	var dice_data = json.parse(dice_file.get_as_text())
	var dice_list = []
	for single_dice in dice_data:
		var dice = create_dice(single_dice["id"], single_dice["sides"])
		dice_list.append(dice)
	return dice_list
