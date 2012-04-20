private
actualFilenameFor: uri
	
	^(super actualFilenameFor: uri) ifNil: [
		self notifyAmberFailedGetIn: uri printString message: 'file not found'.
		nil]