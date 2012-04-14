printString
printString

	| str |
	str := StringStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self name;
		nextPutAll: ')'.
	^str contents
