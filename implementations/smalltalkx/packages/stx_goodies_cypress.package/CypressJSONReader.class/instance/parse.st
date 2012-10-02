"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing
"
parse
	| result |
	result := self whitespace; parseValue.
	stream atEnd
		ifFalse: [ self error: 'end of input expected' ].
	^ result
