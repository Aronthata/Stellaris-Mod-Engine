extends Node
func sort(File : String):
	if File == "Civics":
		Civics()
	elif File == "Traits":
		Traits()
	elif File == "Species":
		Species()
	elif File == "Origins":
		Origins()
	elif File == "Shipsets":
		Shipsets()
	elif File == "Events":
		Events()
	elif File == "Buildings":
		Buildings()
	elif File == "Tech":
		Tech()
	elif File == "Jobs":
		Jobs()

func Civics():
	# Civic Folder Path (CFP)
	Global.FolderCreate("common")
	Global.FolderCreate("common/governments")
	Global.FolderCreate("common/governments/civics")
	Global.FileCreate("common/governments/civics", Global.Name+"Civics.txt")
	
	# Civic Image Folder Path (CIFP)
	Global.FolderCreate("gfx")
	Global.FolderCreate("gfx/interface")
	Global.FolderCreate("gfx/interface/icons")
	Global.FolderCreate("gfx/interface/icons/governments")
	Global.FolderCreate("gfx/interface/icons/governments/civics")
	
	# Language Folder Path (CLFP)
	Global.FolderCreate("localisation")
	Global.FolderCreate("localisation/english")
	Global.FileCreate("localisation/english", Global.Name+"Civics_l_english.yml")
	
func Traits():
	pass
	
func Species():
	pass
	
func Origins():
	pass
	
func Shipsets():
	pass
	
func Events():
	pass
	
func Buildings():
	pass
	
func Tech():
	pass
	
func Jobs():
	pass
