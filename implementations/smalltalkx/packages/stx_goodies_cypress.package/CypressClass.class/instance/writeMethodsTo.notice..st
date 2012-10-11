"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading & writing - private
"
writeMethodsTo:directory notice:copyrightNotice
     "Writes methods into given 'directory' with copyrightNotice in each file"

    | obsolete instDir classDir |

    instDir := directory / 'instance'.
    classDir := directory / 'class'.

    " collect possibly obsolete directories/files "
    obsolete := Set new.
    instDir exists ifTrue:[
        obsolete add: instDir.
        obsolete add: instDir directoryContentsAsFilenames
    ].
    classDir exists ifTrue:[
        obsolete add: classDir.
        obsolete add: classDir directoryContentsAsFilenames
    ].

    self methods do:[:cpsMthd|
        | dir dottedSel file  |

        dir := cpsMthd meta ifTrue:[classDir] ifFalse:[instDir].
        dir exists ifFalse:[ dir makeDirectory ].
        file := dir / ((dottedSel := cpsMthd selector copyReplaceAll:$: with: $.) , '.st').
        cpsMthd writeTo: file notice:copyrightNotice.
        obsolete := obsolete reject:[:each|
            each withoutSuffix baseName = dottedSel
        ].
    ].

    " wipe out obsolete directories / files  "
    obsolete do:[:each|
        each exists ifTrue:[ each recursiveRemove ]
    ].

    "Created: / 11-09-2012 / 11:19:52 / Jan Vrany <jan.vrany@fit.cvut.cz>"
