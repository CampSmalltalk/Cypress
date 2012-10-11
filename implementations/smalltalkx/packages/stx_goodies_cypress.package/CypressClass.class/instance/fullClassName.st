"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
fullClassName
    | ns |

    ns := properties at: 'namespace' ifAbsent:[nil].
    ^(ns notNil and:[ns ~= 'Smalltalk'])
        ifFalse:[properties at: 'name']
        ifTrue:[(properties at: 'name'), '::' , ns].

    "Created: / 18-09-2012 / 10:44:07 / Jan Vrany <jan.vrany@fit.cvut.cz>"
