extends Window
signal CCreate(Name : String)
@onready var Name = $VBoxContainer/VBoxContainer/HBoxContainer/LineEdit


func _on_close_requested():
	visible = false


func _on_button_pressed():
	emit_signal("CCreate", Name.text)
	visible = false
