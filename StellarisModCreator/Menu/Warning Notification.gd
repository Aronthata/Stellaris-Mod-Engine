extends Window
signal Continue

func _on_button_button_up():
	emit_signal("Continue")


func _on_cancel_button_up():
	visible = false
