*Cypress-Structure
writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent
    | indent count |
    indent := startIndent.
    aStream
        nextPutAll: '{';
        newLine.
    count := 0.
    indent := indent + 1.
    (self keys sort: [ :a :b | a <= b ])
        do: [ :key | 
            | value |
            value := self at: key.
            count := count + 1.
            aStream tab: indent.
            key writeCypressJsonOn: aStream forHtml: forHtml indent: indent.
            aStream nextPutAll: ' : '.
            value writeCypressJsonOn: aStream forHtml: forHtml indent: indent.
            count < self size
                ifTrue: [ 
                    aStream
                        nextPutAll: ',';
                        newLine ] ].
    self size = 0
        ifTrue: [ aStream tab: indent ].
    aStream nextPutAll: ' }'