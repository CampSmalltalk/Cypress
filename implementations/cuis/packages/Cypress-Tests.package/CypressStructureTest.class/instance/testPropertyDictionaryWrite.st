tests
testPropertyDictionaryWrite

	| propertyDictionary stream x y |
	propertyDictionary := (self compileJSON: self sampleJson) asCypressPropertyObject.
	stream := WriteStream on: String new.
	propertyDictionary writeCypressJsonOn: stream forHtml: true indent: 0.
	self assert: (x:= stream contents withLineEndings: String lfString)  = (y := self sampleJson withLineEndings: String lfString)
