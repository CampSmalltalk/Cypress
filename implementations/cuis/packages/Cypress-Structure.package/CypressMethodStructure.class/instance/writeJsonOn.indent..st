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
		nextPutAll: '"', self name, '.st",';
		newLine.
	aStream
		tab: indent;
		nextPutAll: '"contents"';
		nextPutAll: ' : '.
	self cypressSource writeCypressJsonOn: aStream forHtml: true indent: indent.
	indent := indent - 1.
	aStream
		newLine;
		tab: indent;
		nextPutAll: ' }'
