extends Area3D
var item = preload("res://item.tscn")
@onready var ativador: Node3D = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node3D) -> void:
	var chamar = body.get_tree().get_first_node_in_group("controlador")
	var instance = item.instantiate()
	ativador.add_child(instance)
	queue_free()
	
