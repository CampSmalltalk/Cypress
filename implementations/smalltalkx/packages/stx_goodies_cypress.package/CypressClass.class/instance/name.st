"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
name
    name isNil ifTrue:[
        properties notNil ifTrue:[
            name := properties at:'name' ifAbsent:[nil]
        ]
    ].
    ^name

    "Created: / 18-09-2012 / 11:02:05 / Jan Vrany <jan.vrany@fit.cvut.cz>"
