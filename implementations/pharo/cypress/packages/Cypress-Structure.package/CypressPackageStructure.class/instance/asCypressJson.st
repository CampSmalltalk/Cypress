conversion
asCypressJson

	| stream |
    	stream := WriteStream on: String new.
    	self writeJsonOn: stream.
	^stream contents