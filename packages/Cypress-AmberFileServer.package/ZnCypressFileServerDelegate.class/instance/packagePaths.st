accessing
packagePaths

	packagePaths ifNil: [ packagePaths := OrderedCollection withAll: #( 'packages' 'tests/scratch' ) ].
	^packagePaths