"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
isSafeForHTTP
        "whether a character is 'safe', or needs to be escaped when used, eg, in a URL"

        ^  asciivalue < 128
                and: [ self isAlphaNumeric
                                or: [ '.-_' includes: self ]]

    "Modified: / 30-08-2012 / 13:57:44 / Jan Vrany <jan.vrany@fit.cvut.cz>"
