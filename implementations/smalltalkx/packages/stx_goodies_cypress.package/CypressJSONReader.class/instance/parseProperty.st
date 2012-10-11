"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing-internal
"
parseProperty
	| name value |
	name := self parseString.
	self expect: ':'.
	value := self parseValue.
	^ self createProperty: name with: value.
