extends Window
@onready var buttons = $VBoxContainer/VBoxContainer/PanelContainer/VBoxContainer/ScrollContainer/PanelContainer/MarginContainer/NodeList.get_children()
@onready var CParent = $VBoxContainer/VBoxContainer/PanelContainer/VBoxContainer/ScrollContainer/PanelContainer/MarginContainer/NodeList

func _on_line_edit_text_changed(new_text):
	for N in buttons:
		N.visible = false
		if new_text.to_lower() in N.text.to_lower():
			N.visible = true
		if new_text.is_empty():
			N.visible = true


func _on_close_requested():
	visible = false



func _on_create_button_up(): 
	get_parent().add_child(load(CParent.node).instantiate())

