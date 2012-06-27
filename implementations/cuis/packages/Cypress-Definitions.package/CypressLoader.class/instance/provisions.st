accessing
provisions
	^ provisions ifNil: [provisions := (Smalltalk classes collect: [:cl | cl name]) asSet ]
