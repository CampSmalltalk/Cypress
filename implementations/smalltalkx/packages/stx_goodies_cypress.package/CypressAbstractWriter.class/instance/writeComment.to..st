"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeComment: comment to: directory
    comment isNil ifTrue:[ ^ self ].

    (directory / self defaultFileNameForComment) writingFileDo:[:f|
        f nextPutAll: comment
    ]

    "Created: / 17-09-2012 / 17:47:59 / Jan Vrany <jan.vrany@fit.cvut.cz>"
