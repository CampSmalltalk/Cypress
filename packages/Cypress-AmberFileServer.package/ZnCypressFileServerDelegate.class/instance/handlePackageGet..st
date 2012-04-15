private
handlePackageGet: request

	| reader |
	reader := CypressPackageReader readPackageStructureFrom: ((FileDirectory on: self directory fullName, FileDirectory slash, request uri path)).
	^ZnResponse ok: (ZnStringEntity html: reader packageStructure asCypressJson)