writing
writeJsonOn: aStream  indent: startIndent

	| indent methods |
	indent := startIndent.
	aStream 
		tab: indent;
		nextPutAll: '{';
		newLine.
	indent := indent + 1.
	aStream
		tab: indent;
		nextPutAll: '"name"';
		nextPutAll: ' : ';
		nextPutAll: '"', self name, (self isClassExtension ifTrue: [ '.extension' ] ifFalse: [ '.class' ]), '",';
		newLine.
	aStream
		tab: indent;
		nextPutAll: '"instance" : [';
		newLine;
		yourself.
	methods := self instanceMethods values asArray sorted: [:a :b | a selector <= b selector].
	1 to: methods size do: [:index | | methodStructure | 
		methodStructure := methods at: index.
		methodStructure writeJsonOn: aStream indent: indent + 1.
		index < methods size ifTrue: [ aStream nextPutAll: ','; newLine ]].
	aStream
		tab: indent;
		nextPutAll: '],';
		newLine;
		yourself.
	aStream
		tab: indent;
		nextPutAll: '"class" : [';
		newLine;
		yourself.
	methods := self classMethods values asArray sorted: [:a :b | a selector <= b selector].
	1 to: methods size do: [:index | | methodStructure | 
		methodStructure := methods at: index.
		methodStructure writeJsonOn: aStream indent: indent + 1.
		index < methods size ifTrue: [ aStream nextPutAll: ','; newLine ]].
	aStream
		tab: indent;
		nextPutAll: ']'.
	self isClassExtension
		ifFalse: [ 
			aStream
				nextPutAll: ',';
				newLine;
				tab: indent;
				nextPutAll: '"README.md" : ';
				yourself.
			self comment writeCypressJsonOn: aStream forHtml: true indent: indent ].
	aStream
		nextPutAll: ',';
		newLine;
		tab: indent;
		nextPutAll: '"properties.json" : ';
		yourself.
	self properties writeCypressJsonOn: aStream forHtml: true indent: indent.
	indent := indent - 1.
	aStream
		newLine;
		tab: indent;
		nextPutAll: ' }'
