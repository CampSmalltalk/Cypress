tests
testPackageStructureToJson

	| packageStructure stream json |
	packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
	stream := StringStream on: String new.
	packageStructure writeJsonOn: stream.
	json := stream contents.
	self assert: self basePackageStructureJson = json