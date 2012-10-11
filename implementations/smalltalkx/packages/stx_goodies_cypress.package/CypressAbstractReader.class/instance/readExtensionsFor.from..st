"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readExtensionsFor: pkg from: directory

    directory directoryContentsAsFilenamesDo:[:each|
        each suffix = self defaultFileSuffixForExtensions ifTrue:[
            | clsname dir |

            clsname := each withoutSuffix baseName.
            dir := each / 'class'.
            dir exists ifTrue:[
                self readMethodsForClassNamed: clsname meta: true from: dir into: pkg extensions.
            ].
            dir := each / 'instance'.
            dir exists ifTrue:[
                self readMethodsForClassNamed: clsname meta: false from: dir into: pkg extensions.
            ]

        ]
    ]

    "Created: / 18-09-2012 / 10:11:16 / Jan Vrany <jan.vrany@fit.cvut.cz>"
