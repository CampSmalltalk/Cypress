"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
fullSuperName
    | ns |

    ns := properties at: 'superNamespace' ifAbsent:[nil].
    ^(ns notNil and:[ns ~= 'Smalltalk'])
        ifFalse:[properties at: 'super']
        ifTrue:[(properties at: 'super'), '::' , ns].

    "Created: / 18-09-2012 / 10:44:25 / Jan Vrany <jan.vrany@fit.cvut.cz>"
