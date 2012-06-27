writing
writeJsonOn: aStream  indent: startIndent

	| indent |
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
		nextPutAll: '"', self name, '",'.
	aStream
		newLine;
		tab: indent;
		nextPutAll: '"contents" : [';
		newLine;
		yourself.
	1 to: self classes size do: [:index | | classStructure | 
		classStructure := self classes at: index.
		classStructure writeJsonOn: aStream indent: indent + 1.
		(self extensions size > 0 or: [ index < self classes size]) ifTrue: [ aStream nextPutAll: ','; newLine. ]].
	1 to: self extensions size do: [:index | | classStructure | 
		classStructure := self extensions at: index.
		classStructure writeJsonOn: aStream indent: indent + 1.
		index < self extensions size ifTrue: [ aStream nextPutAll: ','; newLine.] ].
	aStream
		newLine;
		tab: indent;
		nextPutAll: '],';
		newLine;
		tab: indent;
		nextPutAll: '"properties.json" : '.
	self properties writeCypressJsonOn: aStream forHtml: true indent: indent.
	indent := indent - 1.
	aStream 
		newLine;
		tab: indent;
		nextPutAll: '}'
