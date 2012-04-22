public
handlePackageRequest: request 

	^ request method = #PUT
		ifTrue: [ self handlePackagePut: request ]
	      ifFalse: [ self handlePackageGet: request]