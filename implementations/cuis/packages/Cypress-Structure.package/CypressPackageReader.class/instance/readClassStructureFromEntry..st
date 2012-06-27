reading
readClassStructureFromEntry: classEntry
	| classDirectory methodPropertiesDict classPropertiesDict classComment entries classStructure |
	classDirectory _ classEntry asFileDirectory.
	entries _ classDirectory entries.
	(entries
		detect: [ :entry | entry name = 'methodProperties.json' ]
		ifNone: [ ]) ifNotNil: [ :propertyEntry |
		propertyEntry readStreamDo: [ :fileStream |
			methodPropertiesDict _ CypressJsonParser parseStream: fileStream ]].
	(entries
		detect: [ :entry | entry name = 'properties.json' ]
		ifNone: [ ]) ifNotNil: [ :propertyEntry |
		propertyEntry readStreamDo: [ :fileStream |
			classPropertiesDict _ CypressJsonParser parseStream: fileStream ]].
	(entries
		detect: [ :entry | entry name = 'README.md' ]
		ifNone: [ ]) ifNotNil: [ :commentEntry |
		commentEntry readStreamDo: [ :fileStream |
			classComment _ fileStream contents ]].
	classStructure _ self
		classStructureFrom: classPropertiesDict
		comment: classComment.
	self
		readMethodStructureFor: classStructure
		in: entries
		methodProperties: methodPropertiesDict.
	^ classStructure.