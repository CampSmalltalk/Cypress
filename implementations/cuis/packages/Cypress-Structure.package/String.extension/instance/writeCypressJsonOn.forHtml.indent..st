*Cypress-Structure
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

	aStream 
		nextPutAll: '"';
		nextPutAll: (forHtml
			ifTrue: [ (self withLineEndings: String lfString) encodeForHTTP ]
			ifFalse: [ self withLineEndings: String lfString ]);
		nextPutAll: '"'
