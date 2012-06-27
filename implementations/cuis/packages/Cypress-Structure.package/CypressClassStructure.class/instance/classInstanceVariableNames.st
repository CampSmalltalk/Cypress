accessing
classInstanceVariableNames
	^self properties at: 'classinstvars' ifAbsent: ['']
