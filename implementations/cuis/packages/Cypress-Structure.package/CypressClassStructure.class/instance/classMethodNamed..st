querying
classMethodNamed: methodName

	^self classMethods 
		at: methodName 
		ifAbsent: [ self classMethods at: methodName put: (CypressMethodStructure new name: methodName) ]
