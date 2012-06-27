reading
readExtensionClassStructureFromEntry: classEntry
	| classDirectory methodPropertiesDict classPropertiesDict entries classStructure |
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
	classStructure _ self classStructureFrom: classPropertiesDict.
	self
		readMethodStructureFor: classStructure
		in: entries
		methodProperties: methodPropertiesDict.
	^ classStructure