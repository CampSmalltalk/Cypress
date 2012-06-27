reading
readClassStructureFromEntry: classEntry

    | classDirectory classPropertiesDict classComment entries classStructure |
    classDirectory := classEntry asFileDirectory.
    ((entries := classDirectory entries) detect: [ :entry | entry name = 'properties.json' ] ifNone: [  ])
        ifNotNil: [ :propertyEntry | propertyEntry readStreamDo: [ :fileStream | classPropertiesDict := MCFileTreeJsonParser parseStream: fileStream ] ].
    (entries detect: [ :entry | entry name = 'README.md' ] ifNone: [  ])
        ifNotNil: [ :commentEntry | commentEntry readStreamDo: [ :fileStream | classComment := fileStream contents ] ].
    classStructure := self classStructureFrom: classPropertiesDict comment: classComment.
    self readMethodStructureFor: classStructure in: entries.
	^classStructure