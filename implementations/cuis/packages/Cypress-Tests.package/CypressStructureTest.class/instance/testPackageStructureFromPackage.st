tests
testPackageStructureFromPackage

	| packageStructure |
	packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
	self validatePackage: packageStructure against: self baseDefinitions
