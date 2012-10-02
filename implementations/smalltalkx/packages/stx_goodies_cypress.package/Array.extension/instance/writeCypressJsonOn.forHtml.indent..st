"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent

        | indent |
        aStream 
                nextPutAll: '[';
                cr.
        indent := startIndent + 1.
        1 to: self size do: [:index | | item | 
                item := self at: index.
                aStream tab: indent.
                item writeCypressJsonOn: aStream forHtml: "forHtml"false indent: indent.
                index < self size ifTrue: [ aStream nextPutAll: ','; cr ]].
        self size = 0 ifTrue: [ aStream tab: indent ].
        aStream nextPutAll: ' ]'

    "Modified: / 31-08-2012 / 09:16:59 / Jan Vrany <jan.vrany@fit.cvut.cz>"
