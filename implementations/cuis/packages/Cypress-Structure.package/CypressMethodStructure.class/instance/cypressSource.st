accessing
cypressSource

	| stream |
	stream := WriteStream on: String new.
	stream 
		nextPutAll: self category;
		newLine;
		nextPutAll: self source.
	^stream contents
