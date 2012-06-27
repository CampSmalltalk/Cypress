*Cypress-Structure
writeCypressJsonOn: aStream  indent: startIndent

	aStream 
		nextPutAll: self printString
