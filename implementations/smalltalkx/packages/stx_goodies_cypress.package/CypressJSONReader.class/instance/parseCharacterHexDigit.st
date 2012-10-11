"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing-internal
"
parseCharacterHexDigit
	| digit |
	stream atEnd ifFalse: [
		digit _ stream next asUppercase digitValue.
		"accept hex digits"
		(digit >= 0 and: [ digit < 16 ]) ifTrue: [ ^ digit ]].
	self error: 'hex-digit expected'.
