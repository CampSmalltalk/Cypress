accessing
required
	"dictionary of required global name mapped to list of definitions that require the global"

	required ifNil: [ required := Dictionary new ].
	^required
