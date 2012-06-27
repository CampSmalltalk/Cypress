testing
testDictionaryOfPatchOperations
	"loader uses dictionary for managing patch operations ... ensure that Amber Dictionaries stand up"

	| dict |
	dict := Dictionary new.
	self baseTargetPatch do: [:each | 
		dict at: each put: each ].
	self baseTargetPatch do: [:each | 
		self assert: (dict at: each) = each ].
