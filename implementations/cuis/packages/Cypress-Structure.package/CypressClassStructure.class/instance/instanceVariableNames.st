accessing
instanceVariableNames

	^self properties at: 'instvars' ifAbsent: ['']
