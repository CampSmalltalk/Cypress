writing
writeJsonOn: aStream  indent: startIndent

	| indent methods |
	indent := startIndent.
	aStream 
		tab: indent;
		nextPutAll: '{';
		lf.
	indent := indent + 1.
	aStream
		tab: indent;
		nextPutAll: '"name"';
		nextPutAll: ' : ';
		nextPutAll: '"', self name, (self isClassExtension ifTrue: [ '.extension' ] ifFalse: [ '.class' ]), '",';
		lf.
	aStream
		tab: indent;
		nextPutAll: '"instance" : [';
		lf;
		yourself.
	methods := self instanceMethods values asArray sorted: [:a :b | a selector <= b selector].
	1 to: methods size do: [:index | | methodStructure | 
		methodStructure := methods at: index.
		methodStructure writeJsonOn: aStream indent: indent + 1.
		index < methods size ifTrue: [ aStream nextPutAll: ','; lf ]].
	aStream
		tab: indent;
		nextPutAll: '],';
		lf;
		yourself.
	aStream
		tab: indent;
		nextPutAll: '"class" : [';
		lf;
		yourself.
	methods := self classMethods values asArray sorted: [:a :b | a selector <= b selector].
	1 to: methods size do: [:index | | methodStructure | 
		methodStructure := methods at: index.
		methodStructure writeJsonOn: aStream indent: indent + 1.
		index < methods size ifTrue: [ aStream nextPutAll: ','; lf ]].
	aStream
		tab: indent;
		nextPutAll: ']'.
	self isClassExtension
		ifFalse: [ 
			aStream
				nextPutAll: ',';
				lf;
				tab: indent;
				nextPutAll: '"README.md" : ';
				yourself.
			self comment writeCypressJsonOn: aStream indent: indent ].
	aStream
		nextPutAll: ',';
		lf;
		tab: indent;
		nextPutAll: '"properties.json" : ';
		yourself.
	self properties writeCypressJsonOn: aStream indent: indent.
	indent := indent - 1.
	aStream
		lf;
		tab: indent;
		nextPutAll: ' }'
