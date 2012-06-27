accessing
definitionMap
	definitionMap ifNil: [ definitionMap := Dictionary new ].
	^ definitionMap
