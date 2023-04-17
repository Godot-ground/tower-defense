extends "res://Codes/Core/test-case.gd" 
const FileModel=preload("res://Codes/Core/files-handle.gd")

class FileTest extends TestObject:
	var testCases=[{
	"filepath":"res://Arts/Resources/texts/EN.lang.json"
	},
#	{
#	"filepath":"res://Arts/Resources/texts/EN1.lang.json"
#	}
	]
	var testObject=null
	func _init():
		funcTest(testFileReading)
	func testFileReading():
		for i in testCases:
			testObject=FileModel.Files.new(i['filepath'])
			if(testObject.ToJson()):
				print("testFileReading success with " , i['filepath'], " input filepath")
			else:
				print("testFileReading goes worng with " ,i['filepath'], " input filepath")
