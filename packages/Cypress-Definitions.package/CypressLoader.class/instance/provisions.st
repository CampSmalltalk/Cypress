accessing
provisions
	^ provisions ifNil: [provisions := (Smalltalk current classes collect: [:cl | cl name]) asSet ]
