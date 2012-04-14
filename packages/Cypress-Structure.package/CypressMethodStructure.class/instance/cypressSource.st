accessing
cypressSource

	| stream |
	stream := StringStream on: String new.
	stream 
		nextPutAll: self category;
		lf;
		nextPutAll: self source.
	^stream contents
