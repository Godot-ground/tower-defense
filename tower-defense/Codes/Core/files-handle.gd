
const errorModel = preload("res://Codes/Core/error-handler.gd")
const configs = preload("res://Codes/Core/configs.gd")
class Files:
	var fileName = null
	var fileInstance = null
	var rawBinary = null
	func _init(filepath,type="r"):
		fileName=filepath
		match (type):
			"wr":
				fileInstance=FileAccess.open(fileName, FileAccess.WRITE_READ)
			"rw":
				fileInstance=FileAccess.open(fileName, FileAccess.READ_WRITE)
			"w":
				fileInstance=FileAccess.open(fileName, FileAccess.WRITE)
			_:
				fileInstance=FileAccess.open(fileName, FileAccess.READ)
		if(fileInstance==null):
			fileInstance=FileAccess.open(configs.defaultNotFoundFilePath, FileAccess.READ)
			setRawBinary()
		else:
			setRawBinary(false)
	func setRawBinary(gstd=fileInstance.get_as_text()):
		if(gstd):
			rawBinary=gstd
		else:
			rawBinary=fileInstance.get_as_text()
	func ToJson():
		var stringToObject = JSON.parse_string(rawBinary)
		if stringToObject == null:
			return errorModel.ErrorHandler.new("cant open the file").ToJson()
		else:
			return stringToObject
	func ToString():
		return rawBinary
