extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	if body.name == "Jogador":
		$"../../l_shop".visible = true
		get_tree().paused = true
		print("interagiu com a loja")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
