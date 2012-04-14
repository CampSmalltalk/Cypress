testing
testSnapshot
	| name pkg packageDefinitions expectedDefinitions |
	name := 'Cypress-Mocks'.
	pkg := CypressPackageDefinition new name: name.
	packageDefinitions := pkg snapshot definitions.
	expectedDefinitions := self baseDefinitions.
	self assert: (expectedDefinitions size = packageDefinitions size).
	packageDefinitions do: [:def |
		(expectedDefinitions includes: def)
			ifFalse: [ self assert: false ]].
