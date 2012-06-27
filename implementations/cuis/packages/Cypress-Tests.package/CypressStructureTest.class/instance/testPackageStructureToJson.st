tests
testPackageStructureToJson

	| packageStructure stream json |
	packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
	stream := WriteStream on: String new.
	packageStructure writeJsonOn: stream.
	json := stream contents.
	self assert: (self basePackageStructureJson withLineEndings: String lfString) = (json withLineEndings: String lfString)
