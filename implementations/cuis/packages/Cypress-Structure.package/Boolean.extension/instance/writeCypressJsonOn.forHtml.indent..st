*Cypress-Structure
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

	aStream 
		nextPutAll: self printString
