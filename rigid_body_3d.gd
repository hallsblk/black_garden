extends RigidBody3D

func _on_body_entered(body: Node) -> void:
	if body.name == "Jogador":
		var layout = get_tree().get_first_node_in_group("layout")
		layout.visible = true
		layout.get_node("Label").text = "olá amigo"
		print("right...")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		get_tree().paused = true
