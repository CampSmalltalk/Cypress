"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
encodeForHTTP
        "change dangerous characters to their %XX form, for use in HTTP transactions"
        | encodedStream |
        encodedStream := WriteStream on: (String new).
        
        1 to: self size do: [ :n | | c |
                c := self at: n.
                c isSafeForHTTP ifTrue: [ encodedStream nextPut: c ] ifFalse: [
                        encodedStream nextPut: $%.
                        encodedStream nextPutAll: ((c asciiValue // 16) printStringRadix: 16).
                        encodedStream nextPutAll: ((c asciiValue \\ 16) printStringRadix: 16).
                ]
        ].
        ^encodedStream contents.

    "Modified: / 30-08-2012 / 11:31:38 / Jan Vrany <jan.vrany@fit.cvut.cz>"
