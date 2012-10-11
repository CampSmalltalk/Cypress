"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: Compatibility-Cuis
"
withLineEndings: lineEndString
    | stringColl |

    self assert: lineEndString size == 1.

    stringColl := self asStringCollection.

    ^stringColl
        asStringWith: lineEndString first 
        from:1 to:(stringColl size) 
        compressTabs:false 
        final:nil

    "Created: / 30-08-2012 / 11:27:17 / Jan Vrany <jan.vrany@fit.cvut.cz>"
