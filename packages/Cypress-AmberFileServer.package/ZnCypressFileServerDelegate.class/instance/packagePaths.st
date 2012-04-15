accessing
packagePaths

	packagePaths ifNil: [ packagePaths := OrderedCollection with: 'packages'  ].
	^packagePaths