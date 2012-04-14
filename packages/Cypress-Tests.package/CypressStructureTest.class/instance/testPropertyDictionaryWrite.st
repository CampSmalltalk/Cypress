tests
testPropertyDictionaryWrite

	| propertyDictionary stream |
	propertyDictionary := (self compileJSON: self sampleJson) asCypressPropertyObject.
	stream := StringStream on: String new.
	propertyDictionary writeCypressJsonOn: stream indent: 0.
	self assert: stream contents = self sampleJson
