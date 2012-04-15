public
handlePackageRequest: request 

	^ request method = #PUT
		ifTrue: [ 
			self handlePackagePut: request.
			ZnResponse created: request uri ]
	      ifFalse: [ self handlePackageGet: request]