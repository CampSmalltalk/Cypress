"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing-internal
"
parseCharacterHex
	| value |
	value := self parseCharacterHexDigit.
	3 timesRepeat: [ value := (value << 4) + self parseCharacterHexDigit ].
	^ Character unicodeCodePoint: value
