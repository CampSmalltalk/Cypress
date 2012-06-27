accessing
packageExtension

	^self properties at: 'extension' ifAbsent: ['.package' ]
