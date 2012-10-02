"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-model
"
writeMethod: cmethod as: name to: directory
    | mthfile |

    mthfile := directory / name.

    self writeProperties: cmethod properties to: directory.

    mthfile writingFileDo:[:s|
        s nextPut:$"; cr.
        s nextPutAll: 'notice: '; nextPutAll: notice; cr.
        s nextPutAll: 'category: '; nextPutAll: cmethod category ? '* as yet unclassified *'; cr.
        s nextPut:$"; cr.
        s nextPutAll: cmethod source.
    ].

    "Created: / 17-09-2012 / 22:21:32 / Jan Vrany <jan.vrany@fit.cvut.cz>"
