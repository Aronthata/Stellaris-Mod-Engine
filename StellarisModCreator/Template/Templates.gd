extends Node2D
@onready var Templates = {
	"Civics": $"VBoxContainer/Templates/World Creation/Civics",
	"Traits": $"VBoxContainer/Templates/World Creation/Traits",
	"Species": $"VBoxContainer/Templates/World Creation/Species",
	"Origins": $"VBoxContainer/Templates/World Creation/Origins",
	"Shipsets": $"VBoxContainer/Templates/World Creation/ShipSets",
	"Events": $VBoxContainer/Templates/Gameplay/Events,
	"Buildings": $VBoxContainer/Templates/Gameplay/Buildings,
	"Tech": $VBoxContainer/Templates/Gameplay/Tech,
	"Jobs": $VBoxContainer/Templates/Gameplay/Jobs
}



func _on_build_pressed(): 
	for c in Array(Global.FileRead("descriptor.mod").split("\n")):
		if 'name="' in c:
			Global.Name = c.split('"')[1]
	for Temp in Templates:
		if Templates[Temp].button_pressed == true:
			Create.sort(Templates[Temp].name)
	Global.ChangeScene("res://Editor/MainScene.tscn")

