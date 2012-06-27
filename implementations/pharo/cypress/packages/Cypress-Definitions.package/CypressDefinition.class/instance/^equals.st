comparing
= aDefinition
	^(aDefinition isKindOf: CypressDefinition) and: [self isRevisionOf: aDefinition]
