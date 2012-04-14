accessing
selector: aString
    name := String
        streamContents: [ :stream | 
            aString
                do: [ :chara | 
                    stream
                        nextPut:
                            (chara = $:
                                ifTrue: [ $. ]
                                ifFalse: [ chara ]) ] ]