private
splitMethodName: methodName

	| ext  |
	ext := '.json'.
	(   '*' , ext match: methodName)
		ifFalse: [
			ext := '.st'.
			('*' , ext match: methodName)
				ifFalse: [ self error: 'invalid structure element: ', methodName ] ].
	^{methodName copyFrom: 1 to: (methodName size - ext size). ext}
