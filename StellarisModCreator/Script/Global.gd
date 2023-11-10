extends Node
var folder : String = ""
var Name : String = ""
var current_scene = null
func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count()-1)

func ChangeScene(path: String):
	current_scene.queue_free()
	var new_scene = ResourceLoader.load(path)
	print(path)
	current_scene = new_scene.instantiate()
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)

func FolderCreate(PathName : String):
	DirAccess.make_dir_absolute(Global.folder+"/"+PathName)
	
func FileCreate(FilePath : String, FileName : String, FileType : String = "", FileContent = "" ):
	var file = FileAccess.open(folder+"/"+FilePath+"/"+FileName, FileAccess.WRITE)
	file.store_string(FileContent)
	if FileType == "bom":
		file.store_8(0xEF)
	file.close()
	pass

func FileFind():
	pass

func FileRead(FileLocal):
	var file = FileAccess.open(folder+"/"+FileLocal, FileAccess.READ)
	var a = file.get_as_text()
	file.close()
	return a
func FileWrite():
	pass
