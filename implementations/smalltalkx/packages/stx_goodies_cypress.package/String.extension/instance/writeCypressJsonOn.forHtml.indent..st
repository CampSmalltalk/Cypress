"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

        aStream 
                nextPutAll: '"';
                nextPutAll: ("forHtml"false
                        ifTrue: [ (self withLineEndings: String lfString) encodeForHTTP ]
                        ifFalse: [ self withLineEndings: String lfString ]);
                nextPutAll: '"'

    "Modified: / 31-08-2012 / 09:17:27 / Jan Vrany <jan.vrany@fit.cvut.cz>"
