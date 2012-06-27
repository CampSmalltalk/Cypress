accessing
packageDirectory

	packageDirectory 
		ifNil: [ 
			packageDirectory := self rootDirectory directoryNamed: self packageStructure name.
			packageDirectory assureExistence ].
	^packageDirectory