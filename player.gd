extends CharacterBody2D

@export var speed: float = 500
@export var maxLife: float= 3
@export var life: float= maxLife

@onready var sprite=$Sprite2D
@onready var camera=$Camera2D


func Movement():
	var directionX = Input.get_axis("left","right")
	var directionY = Input.get_axis("up","down")
	
	var dir = Input.get_vector("left", "right","up", "down")

	velocity = dir * speed
	print(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	Movement()
	move_and_slide()
