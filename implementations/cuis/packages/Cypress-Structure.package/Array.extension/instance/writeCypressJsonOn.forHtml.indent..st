*Cypress-Structure
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

	| indent |
	aStream 
		nextPutAll: '[';
		newLine.
	indent := startIndent + 1.
	1 to: self size do: [:index | | item | 
		item := self at: index.
		aStream tab: indent.
		item writeCypressJsonOn: aStream forHtml: forHtml indent: indent.
		index < self size ifTrue: [ aStream nextPutAll: ','; newLine ]].
	self size = 0 ifTrue: [ aStream tab: indent ].
	aStream nextPutAll: ' ]'
