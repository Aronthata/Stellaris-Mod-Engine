extends Button
class_name PosibButton
@export var label : Label


func _on_focus_entered():
	get_parent().node = "res://Editor/Tabs/Civics/Nodes/"+text+"/"+text+".tscn"
	label.text = editor_description
