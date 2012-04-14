initialization
fromPackage: aCypressPackageDefinition

	| snapshot classMap classDefinitions classStructure |
	snapshot := aCypressPackageDefinition snapshot.
	name := aCypressPackageDefinition name, '.package'.
	properties := Dictionary new.
	classDefinitions := Set new.
	classMap := Dictionary new.
	snapshot definitions do: [:definition |  
			definition 
				classDefinition: [:classDefinition |  classDefinitions add: classDefinition ] 
				methodDefinition: [:methodDefinition | 
					(classMap 
						at: methodDefinition className 
						ifAbsent: [classMap at: methodDefinition className put: Set new]) 
							add: methodDefinition. ]].
	classDefinitions do: [:classDefinition |
		classStructure := (CypressClassStructure fromClassDefinition: classDefinition)
			packageStructure: self.
		(classMap removeKey: classDefinition className ifAbsent: [#()]) do: [:methodDefinition | | methodStructure |
			methodStructure := (CypressMethodStructure fromMethodDefinition: methodDefinition)
				packageStructure: self;
				classStructure: classStructure.
			(methodDefinition
				instanceMethod: [:instanceMethod | classStructure instanceMethods ] 
				classMethod: [:classMethod | classStructure classMethods ])
					at: methodDefinition selector
					put: methodStructure ].
		self classes add: classStructure ].
	classMap keysAndValuesDo: [:className :methods |
		classStructure := (CypressClassStructure new name: className)
			packageStructure: self.
		methods do: [:methodDefinition | | methodStructure |
			methodStructure := (CypressMethodStructure fromMethodDefinition: methodDefinition)
				packageStructure: self;
				classStructure: classStructure.
			(methodDefinition
				instanceMethod: [:instanceMethod | classStructure instanceMethods ] 
				classMethod: [:classMethod | classStructure classMethods ])
					at: methodDefinition selector
					put: methodStructure ].
		self extensions add: classStructure ].
