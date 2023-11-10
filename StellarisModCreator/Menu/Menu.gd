extends Node2D
@onready var Filebox : FileDialog = $VBoxContainer/HBoxContainer/Information/FileDialog
@onready var Path : Label = $VBoxContainer/HBoxContainer/Information/HBoxContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	Filebox.current_dir = Filebox.get_meta("Path")


func _on_file_dialog_dir_selected(dir):
	Global.folder = dir
	print(dir)
	Path.text = dir
	Filebox.set_meta("Path", dir)


func _on_button_pressed():
	Filebox.visible = true


func _on_start_button_up():
	if Global.folder.is_empty():
		$ErrorHighlight.visible = true
	else:
		if "mod/" in Global.folder and "Documents/" in Global.folder:
			Global.ChangeScene("res://Template/Templates.tscn")
		else:
			$Window.visible = true
			pass


func _on_window_continue():
	Global.ChangeScene("res://Template/Templates.tscn")
