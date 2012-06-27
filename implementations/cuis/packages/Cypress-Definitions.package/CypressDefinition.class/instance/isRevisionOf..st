testing
isRevisionOf: aDefinition
	^ (aDefinition isKindOf: CypressDefinition) and: [aDefinition description = self description]
