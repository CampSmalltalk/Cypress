"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeClasses: classes to: directory
    "Writes my classes  into 'directory' with given copyrightNotice"

    | obsolete |

    " collect possibly obsolete .class directories "
    obsolete := Set new.
    directory directoryContentsAsFilenamesDo:[:each|
        | suffix |

        each suffix = self defaultFileSuffixForClass ifTrue:[
            obsolete add: each.
        ]
    ].

    " write classes... "
    classes do:[:cclass|
        | cpsClsDir name |

        cpsClsDir := directory / (name := self defaultFileNameForClassNamed:cclass name).
        obsolete remove:cpsClsDir ifAbsent:[].
        self writeClass: cclass as: name to: directory
    ].

    " wipe out obsolete .class directories "
    obsolete do:[:each|
        each recursiveRemove.
    ].

    "Created: / 17-09-2012 / 18:12:51 / Jan Vrany <jan.vrany@fit.cvut.cz>"
