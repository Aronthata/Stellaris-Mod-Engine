extends CheckButton
@export var Child : Node
func _on_toggled(button_pressed):
	Child.visible = button_pressed
