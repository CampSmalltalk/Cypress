"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

	aStream 
		nextPutAll: self printString
