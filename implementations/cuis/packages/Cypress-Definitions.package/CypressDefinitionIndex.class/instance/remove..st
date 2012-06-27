removing
remove: aDefinition
	self definitionMap removeKey: aDefinition description ifAbsent: []
