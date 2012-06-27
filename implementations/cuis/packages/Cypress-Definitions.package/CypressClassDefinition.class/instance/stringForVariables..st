printString
stringForVariables: aCollectionOfVariableNames
	^ String streamContents:
		[:stream |
		aCollectionOfVariableNames
			do: [:ea | stream nextPutAll: ea]
			separatedBy: [stream space]]
