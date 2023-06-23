extends Node2D

var kecepatan : float = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	$KarakterBody.velocity = Vector2(0,0)
	
	if Input.is_action_pressed("GerakKanan"):
		$KarakterBody.velocity = Vector2(kecepatan,0)
#		$KarakterBody.move_and_collide(Vector2(10,0))
		pass
	
	if Input.is_action_pressed("GerakKiri"):
		$KarakterBody.velocity = Vector2(-kecepatan,0)
#		$KarakterBody.move_and_collide(Vector2(-10,0))
		pass
		
	if Input.is_action_pressed("GerakAtas"):
		$KarakterBody.velocity = Vector2($KarakterBody.velocity.x,-kecepatan)
#		$KarakterBody.move_and_collide(Vector2(0,-10))
		pass
		
	if Input.is_action_pressed("GerakBawah"):
		$KarakterBody.velocity = Vector2($KarakterBody.velocity.x,kecepatan)
#		$KarakterBody.move_and_collide(Vector2(0,10))
		pass
		
	if $KarakterBody.is_on_wall():
		print("Nabrak Tembok")
	
	$KarakterBody.move_and_slide()
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
