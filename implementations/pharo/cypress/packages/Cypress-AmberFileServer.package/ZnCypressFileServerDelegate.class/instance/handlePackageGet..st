private
handlePackageGet: request

	| reader packageDir |
	packageDir := self packageDirectoryFor: request.
	packageDir exists 
		ifFalse: [ 
			self notifyAmberFailedGetIn: packageDir fullName message: 'Directory does not exist'. 
			^ZnResponse serverError: 'Directory does not exist' ].
	reader := CypressPackageReader readPackageStructureFrom: packageDir.
	^ZnResponse ok: (ZnStringEntity html: reader packageStructure asCypressJson)