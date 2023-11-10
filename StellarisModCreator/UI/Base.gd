extends VBoxContainer
@onready var Add = $HBoxContainer/Add
@export var collapsible : Node
@export var label : String:
	set(value):
		label = value
		collapsible.text = label
@export var CNNWind : Node
	
		

func _on_add_button_up():
	CNNWind.visible = true
