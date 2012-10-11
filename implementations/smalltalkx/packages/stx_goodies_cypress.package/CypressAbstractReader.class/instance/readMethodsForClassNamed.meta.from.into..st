"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readMethodsForClassNamed: clsname meta: isClassMethod from: dir into: collection

    dir directoryContentsAsFilenamesDo:[:each|
        each suffix = 'st' ifTrue:[
            | mthd |

            mthd := self readMethod: each baseName from: dir.
            mthd meta: isClassMethod.
            mthd klass: clsname.
            collection add: mthd.
        ]
    ]

    "Created: / 18-09-2012 / 10:07:44 / Jan Vrany <jan.vrany@fit.cvut.cz>"
