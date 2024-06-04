extends Camera2D

@export var target = Node2D
@export var offSet: float = 500

# Called when the node enters the scene tree for the first time.
func _process(delta):
	position.y = target.position.y
	print(position)
