extends Sprite2D

@export var is_moving : bool

#func _process(_delta):
	#print(is_moving)

func not_moving() -> void:
	print("Not moving")
	
func print_number(number : int) -> void:
	print("The number is: " + str(number))

