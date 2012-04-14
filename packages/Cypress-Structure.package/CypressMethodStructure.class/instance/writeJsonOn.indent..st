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
		nextPutAll: '"', self name, '.st",';
		lf.
	aStream
		tab: indent;
		nextPutAll: '"contents"';
		nextPutAll: ' : '.
	self cypressSource writeCypressJsonOn: aStream indent: indent.
	indent := indent - 1.
	aStream
		lf;
		tab: indent;
		nextPutAll: ' }'
