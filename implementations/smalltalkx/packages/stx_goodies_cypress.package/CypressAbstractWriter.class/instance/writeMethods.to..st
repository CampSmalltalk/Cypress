"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeMethods: methods to:directory 
     "Writes methods into given 'directory' with copyrightNotice in each file"

    | obsolete instDir classDir |

    instDir := directory / 'instance'.
    classDir := directory / 'class'.

    " collect possibly obsolete directories/files "
    obsolete := Set new.
    instDir exists ifTrue:[
        obsolete add: instDir.
        obsolete addAll: instDir directoryContentsAsFilenames
    ].
    classDir exists ifTrue:[
        obsolete add: classDir.
        obsolete addAll: classDir directoryContentsAsFilenames
    ].

    methods do:[:cpsMthd|
        | dir dottedSel file baseNameWithoutSuffix name|

        dir := cpsMthd meta ifTrue:[classDir] ifFalse:[instDir].
        dir exists ifFalse:[ dir makeDirectory ].
        obsolete remove: dir ifAbsent:[].
        file := dir / (name := self defaultFileNameForMethodNamed:cpsMthd selector).
        baseNameWithoutSuffix := file withoutSuffix baseName.
        self writeMethod: cpsMthd as: name to: dir.
        obsolete := obsolete reject:[:each|
            each withoutSuffix baseName = baseNameWithoutSuffix
        ].
    ].

    " wipe out obsolete directories / files  "
    obsolete do:[:each|
        each exists ifTrue:[ each recursiveRemove ]
    ].

    "Created: / 17-09-2012 / 18:29:57 / Jan Vrany <jan.vrany@fit.cvut.cz>"
