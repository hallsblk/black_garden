extends RigidBody3D
@onready var item: RigidBody3D = $"."
var indx = get_index()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	item.contact_monitor = true
	item.max_contacts_reported = 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	if body.name == "Jogador":
		item.get_parent_node_3d().get_parent_node_3d().queue_free()
