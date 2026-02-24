extends CharacterBody3D

var target: Node3D

const SPEED = 4.0
const JUMP_VELOCITY = 4.5

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D

func _ready():
	if not target: _set_target()
	
func _set_target():
	target = get_tree().get_first_node_in_group("Jogador")

func _physics_process(delta: float) -> void:
	var nextPathPosition = navigation_agent_3d.get_next_path_position()
	
	var direction = global_position.direction_to(nextPathPosition)
	var calculateVelocity = direction * SPEED
	if navigation_agent_3d.distance_to_target() <= 5.0:
		#print(navigation_agent_3d.distance_to_target())
		velocity = Vector3(calculateVelocity.x,velocity.y,calculateVelocity.z)
		look_at(target.global_position)
	else:
		velocity = Vector3.ZERO
	
	

	move_and_slide()
	
	_update_target_position()


func _update_target_position():
	navigation_agent_3d.target_position = target.global_transform.origin
