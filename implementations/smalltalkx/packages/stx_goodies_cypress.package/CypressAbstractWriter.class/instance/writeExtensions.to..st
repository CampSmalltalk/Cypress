"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeExtensions: extensions to: directory
    "Writes extensions into 'directory'/file with given copyrightNotice"

    |  obsolete extensionsPerClass |

    " group extensions by class... "
    extensionsPerClass := Dictionary new.
    extensions do:[:cpsMthd |
        (extensionsPerClass at: cpsMthd klass ifAbsentPut: [ Set new ])
            add: cpsMthd.
    ].

    " collect possibly obsolete .extension directories "
    obsolete := Set new.
    directory directoryContentsAsFilenamesDo:[:each|
        | suffix |

        each suffix = 'extension' ifTrue:[
            obsolete add: each.
        ]
    ].

    " write individual extensions... "
    extensionsPerClass keysAndValuesDo:[:name :cpsMthds |
        | cpsClsDir cpsCls |

        cpsClsDir := directory / (self defaultFileNameForClassExtensionsNamed:name).
        obsolete remove: cpsClsDir ifAbsent:[].
        cpsClsDir exists ifFalse: [ cpsClsDir makeDirectory ].

        self writeMethods: cpsMthds to: cpsClsDir.
    ].

    " wipe out obsolete .class directories "
    obsolete do:[:each|
        each recursiveRemove.
    ].

    "Created: / 17-09-2012 / 18:29:29 / Jan Vrany <jan.vrany@fit.cvut.cz>"
