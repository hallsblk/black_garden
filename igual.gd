extends CharacterBody3D
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@export var target: Node3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

func _ready():
	if not target: _set_target()
	
func _set_target():
	target = get_tree().get_first_node_in_group("Jogador")
	

func _physics_process(delta: float) -> void:
	var nextPathPosition = navigation_agent_3d.get_next_path_position()
	
	var direction = global_position.direction_to(nextPathPosition)
	var calculateVelocity = direction * SPEED
	velocity = Vector3(calculateVelocity.x,velocity.y,calculateVelocity.y)
	look_at(target.global_position)

	move_and_slide()
	
	_update_target_position()

func _update_target_position():
	navigation_agent_3d.target_position = target.global_transform.origin

func _on_navigation_agent_3d_target_reached() -> void:
	pass # Replace with function body.
