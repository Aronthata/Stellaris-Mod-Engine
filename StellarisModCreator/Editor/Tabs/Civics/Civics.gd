extends TabBar
@onready var CivicW: Window = $VBoxContainer/ScrollContainer/PanelContainer/CivicNodes/Window
@onready var base = preload("res://UI/Base.tscn")
@onready var CN : VBoxContainer = $VBoxContainer/ScrollContainer/PanelContainer/CivicNodes
func _on_exit_button_up():
	queue_free()


func _on_button_button_up():
	CivicW.visible = true

func _on_window_c_create(Name):
	var inst = base.instantiate()
	inst.label = Name
	CN.add_child(inst)
	
	
