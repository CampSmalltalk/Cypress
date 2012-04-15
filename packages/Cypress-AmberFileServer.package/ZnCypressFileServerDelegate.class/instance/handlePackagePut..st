private
handlePackagePut: request

	CypressPackageWriter 
		writePackageStructure: (CypressPackageStructure fromJson: request entity string) 
		to: (FileDirectory on: self directory fullName, FileDirectory slash, request uri path)
	