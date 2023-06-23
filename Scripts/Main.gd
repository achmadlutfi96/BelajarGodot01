extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton:
		$Gambar1/Gambar3.rotation += 10
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if Input.is_action_just_pressed("GerakKanan"):
		$Gambar1.position += Vector2(10,0)
		print("ke kanan")
	elif Input.is_action_pressed("GerakKiri"):
		$Gambar1.position -= Vector2(10,0)
#
#	get_node("Gambar2/Gambar3").position.x += 100 * delta
	pass
