tests
testPropertyDictionaryWrite
    | propertyDictionary stream x |
    propertyDictionary := (self compileJSON: self sampleJson) asCypressPropertyObject.
    stream := WriteStream on: String new.
    propertyDictionary writeCypressJsonOn: stream indent: 0.
    self assert: (x := stream contents withUnixLineEndings) = self sampleJson withUnixLineEndings