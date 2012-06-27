services
writeCodePackage: aCodePackage
	"
	For example:
		CypressPackageWriter writeCodePackage: (CodePackage named: 'Cypress-Structure' createIfAbsent: true registerIfNew: false)
		CypressPackageWriter writeCodePackage: (CodePackage named: 'Morphic' createIfAbsent: true registerIfNew: false)
	"
	CypressPackageWriter
		writePackageStructure: 
			(CypressPackageStructure fromPackage: 
				(CypressPackageDefinition new name: aCodePackage packageName))
		to: FileDirectory default