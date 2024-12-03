extends Area2D

@export var speed: int = 150
 #Called when the node enters the scene tree for the first time.

@onready var screeensize = get_viewport_rect().size

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elasped time since the previous frame.
func _process(delta: float) -> void:
	var input = Input.get_vector("left", "right", "up", "down")
	
	if input.x > 0:
		$Ship.frame = 2
		$Ship/Booster.animation()
	
	position += input * speed * delta
	position = position.clamp(Vector2(8,8), screeensize - Vector2(8,16))
