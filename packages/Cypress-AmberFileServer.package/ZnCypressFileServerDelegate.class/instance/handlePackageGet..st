private
handlePackageGet: request

	| reader packageDir |
	packageDir := FileDirectory on: self directory fullName, FileDirectory slash, request uri path.
	packageDir exists 
		ifFalse: [ 
			self notifyAmberFailedGetIn: packageDir fullName message: 'Directory does not exist'. 
			^ZnResponse serverError: 'Directory does not exist' ].
	reader := CypressPackageReader readPackageStructureFrom: packageDir.
	^ZnResponse ok: (ZnStringEntity html: reader packageStructure asCypressJson)