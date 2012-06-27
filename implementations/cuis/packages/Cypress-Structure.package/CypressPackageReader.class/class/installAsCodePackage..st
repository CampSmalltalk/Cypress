services
installAsCodePackage: aCypressPackageDirectory
	"
	For example:
		CypressPackageReader installAsCodePackage: (FileDirectory default directoryNamed: 'Cypress-Mocks.package')
	"
	| reader cypressStructure incomingSnapshot |
	reader _ CypressPackageReader readPackageStructureFrom: aCypressPackageDirectory.
	cypressStructure _ reader packageStructure.
	incomingSnapshot _ cypressStructure snapshot.
	incomingSnapshot updatePackage: (CypressPackageDefinition new name: cypressStructure packageName).
	CodePackage named: cypressStructure packageName createIfAbsent: true registerIfNew: true