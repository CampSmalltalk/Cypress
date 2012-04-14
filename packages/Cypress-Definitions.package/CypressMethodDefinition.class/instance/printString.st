printing
printString

	| str |
	str := StringStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self className.
	self classIsMeta
		ifTrue: [ str nextPutAll: ' class' ].
	str 
		nextPutAll: '>>';
		nextPutAll: self selector;
		nextPutAll: ')'.
	^str contents
