"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readMethodsFor: cls from: directory
    | dir |

    (dir := directory / 'class') exists ifTrue:[
        self readMethodsForClassNamed: cls name meta: true from: dir into: cls methods
    ].
    (dir := directory / 'instance') exists ifTrue:[
        self readMethodsForClassNamed: cls name meta: false from: dir into: cls methods
    ]

    "Created: / 18-09-2012 / 09:56:44 / Jan Vrany <jan.vrany@fit.cvut.cz>"
