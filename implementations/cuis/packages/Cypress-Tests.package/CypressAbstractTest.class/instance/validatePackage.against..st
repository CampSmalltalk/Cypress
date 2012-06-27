private
validatePackage: package against: expectedDefinitions

	| packageDefinitions cd1 cd2 |
	packageDefinitions := package snapshot definitions.
	self assert: (expectedDefinitions size = packageDefinitions size).
	cd1 := packageDefinitions detect: [:each | each isKindOf: CypressClassDefinition].
	cd2 :=  expectedDefinitions detect: [:each | each isKindOf: CypressClassDefinition].
	self assert: cd1 = cd2.
	packageDefinitions do: [:def |
		(expectedDefinitions includes: def)
			ifFalse: [ 
				def inspect.
				self assert: false ]].
