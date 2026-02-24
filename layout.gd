extends Control
@onready var label: Label = $Label


func dialog():
	label.text = "a"




func _on_button_button_down() -> void:
	print("pressionado")


func _on_button_2_button_down() -> void:
	get_tree().paused = false
	visible = false
