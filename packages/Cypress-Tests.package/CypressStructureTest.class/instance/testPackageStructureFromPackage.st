tests
testPackageStructureFromPackage

	| packageStructure packageDefinitions expectedDefinitions |
	packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
	packageDefinitions := packageStructure snapshot definitions.
	expectedDefinitions := self baseDefinitions.
	self assert: (expectedDefinitions size = packageDefinitions size).
	packageDefinitions do: [:def |
		(expectedDefinitions includes: def)
			ifFalse: [ 
				def inspect.
				self assert: false ]].
