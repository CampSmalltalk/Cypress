accessing
packageName

	^self name copyFrom: 1 to: (self name size - self packageExtension size)
