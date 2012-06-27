tests
testPackageStructureSnapshot

	| packageStructure |
	packageStructure := CypressPackageStructure fromJs: (self compileJSON: self basePackageStructureJson).
	self validatePackage: packageStructure against: self baseDefinitions
