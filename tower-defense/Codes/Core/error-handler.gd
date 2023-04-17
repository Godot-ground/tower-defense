class ErrorHandler:
	var errorMessage=null
	var ErrorRaise=false
	func _init(errorString="this object have error when you"):
		errorMessage=errorString
	func ToJson():
		if(ErrorRaise):
			return {"error":errorMessage}
		return ErrorRaise
	func ToString():
		if(ErrorRaise):
			return errorMessage
		return ErrorRaise
