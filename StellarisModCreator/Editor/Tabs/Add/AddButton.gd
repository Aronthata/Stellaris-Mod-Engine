extends Button
@onready var container = get_parent().get_parent().get_parent().get_parent().get_parent()
@onready var Subject = load("res://Editor/Tabs/"+text+"/"+text+".tscn")
	

func _on_button_up():
	var inst = Subject.instantiate()
	container.add_child(inst)
