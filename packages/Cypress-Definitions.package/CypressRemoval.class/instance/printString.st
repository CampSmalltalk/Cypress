printing
printString

	| str |
	str := StringStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self description;
		nextPutAll: ')'.
	^str contents
