writing
writeJsonOn: aStream  indent: startIndent

	| indent |
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
		nextPutAll: '"', self name, '",'.
	aStream
		lf;
		tab: indent;
		nextPutAll: '"contents" : [';
		lf;
		yourself.
	1 to: self classes size do: [:index | | classStructure | 
		classStructure := self classes at: index.
		classStructure writeJsonOn: aStream indent: indent + 1.
		(self extensions size > 0 or: [ index < self classes size]) ifTrue: [ aStream nextPutAll: ','; lf. ]].
	1 to: self extensions size do: [:index | | classStructure | 
		classStructure := self extensions at: index.
		classStructure writeJsonOn: aStream indent: indent + 1.
		index < self extensions size ifTrue: [ aStream nextPutAll: ','; lf.] ].
	aStream
		lf;
		tab: indent;
		nextPutAll: '],';
		lf;
		tab: indent;
		nextPutAll: '"properties.json" : '.
	self properties writeCypressJsonOn: aStream indent: indent.
	indent := indent - 1.
	aStream 
		lf;
		tab: indent;
		nextPutAll: '}'
