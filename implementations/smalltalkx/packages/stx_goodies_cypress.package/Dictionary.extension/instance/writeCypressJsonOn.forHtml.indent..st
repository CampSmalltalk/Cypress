"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent
    | indent count |
    indent := startIndent.
    aStream
        nextPutAll: '{';
        cr.
    count := 0.
    indent := indent + 1.
    (self keys asSortedCollection: [ :a :b | a <= b ])
        do: [ :key | 
            | value |
            value := self at: key.
            count := count + 1.
            aStream tab: indent.
            key writeCypressJsonOn: aStream forHtml: "forHtml"false indent: indent.
            aStream nextPutAll: ' : '.
            value writeCypressJsonOn: aStream forHtml: "forHtml"false indent: indent.
            count < self size
                ifTrue: [ 
                    aStream
                        nextPutAll: ',';
                        cr ] ].
    self size = 0
        ifTrue: [ aStream tab: indent ].
    aStream nextPutAll: ' }'

    "Modified: / 31-08-2012 / 09:17:19 / Jan Vrany <jan.vrany@fit.cvut.cz>"
