accessing
orderedItems
	"ordered list of patch operations"

	orderedItems ifNil: [ orderedItems := OrderedCollection new ].
	^orderedItems
