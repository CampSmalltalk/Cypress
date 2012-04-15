private
handlePackagePut: request

	CypressPackageWriter 
		writePackageStructure: (CypressPackageStructure fromJson: request entity string) 
		to: (FileDirectory on: request uri path)
	