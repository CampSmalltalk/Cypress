private
directoryForDirectoryNamed: directoryNameOrPath
    ^ directoryNameOrPath = '.'
        ifTrue: [ self packageDirectory ]
        ifFalse: [ | dir |
            dir := self packageDirectory directoryNamed: directoryNameOrPath.
            dir assureExistence.
            dir  ]