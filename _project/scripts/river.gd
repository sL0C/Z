extends Area2D

var current_vec = Vector2(0, 50)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.is_in_group("moveable"):
			body.move(current_vec)
	pass
