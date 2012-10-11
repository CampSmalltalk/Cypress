"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing-internal
"
parseCharacter
        | char |
        (char := stream next) = $\ 
                ifFalse: [ ^ char ].
        (char := stream next) = $" 
                ifTrue: [ ^ char ].
        char = $\
                ifTrue: [ ^ char ].
        char = $/
                ifTrue: [ ^ char ].
        char = $b
                ifTrue: [ ^ Character backspace ].
        char = $f
                ifTrue: [ ^ Character newPage ].
        char = $n
                ifTrue: [ ^ Character linefeed ].
        char = $r
                ifTrue: [ ^ Character return ].
        char = $t
                ifTrue: [ ^ Character tab ].
        char = $u
                ifTrue: [ ^ self parseCharacterHex ].
        self error: 'invalid escape character \' , (String with: char)

    "Modified: / 18-09-2012 / 14:22:02 / Jan Vrany <jan.vrany@fit.cvut.cz>"
