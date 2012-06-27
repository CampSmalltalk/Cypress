tests
testPackageStructureSnapshot

	| packageStructure packageDefinitions expectedDefinitions |
	packageStructure := CypressPackageStructure fromJs: (self compileJSON: self basePackageStructureJson).
	packageDefinitions := packageStructure snapshot definitions.
	expectedDefinitions := self baseDefinitions.
	self assert: (expectedDefinitions size = packageDefinitions size).
	packageDefinitions do: [:def |
		(expectedDefinitions includes: def)
			ifFalse: [ 
				def inspect.
				self assert: false ]].
