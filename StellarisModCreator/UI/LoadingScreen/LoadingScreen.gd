extends Node2D
var scene = "res://Menu/Menu.tscn"
@onready var progress_bar = $ColorRect
var progress = []
var scene_load_status = 3
func _ready():
	ResourceLoader.load_threaded_request(scene)
	
func _process(_delta) :
	ResourceLoader.load_threaded_get_status(scene, progress)
	progress_bar.texture.fill_from.x = progress[0]
	if roundf(progress[0]*100) == 100:
		Global.ChangeScene(scene)
