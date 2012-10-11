"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: parsing-internal
"
parseNumberFraction
    | number power |
    number := 0.
    power := 1.0.
    [ stream atEnd not and: [ stream peek isDigit ] ]
        whileTrue: [ 
            number := 10 * number + (stream next digitValue).
            power := power * 10.0 ].
    ^ number / power
