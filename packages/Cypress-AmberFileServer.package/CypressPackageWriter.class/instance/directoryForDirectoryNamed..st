private
directoryForDirectoryNamed: directoryNameOrPath
    ^ directoryNameOrPath = '.'
        ifTrue: [ self packageDirectory assureExistence ]
        ifFalse: [ | dir |
            dir := self packageDirectory directoryNamed: directoryNameOrPath.
            dir assureExistence.
            dir  ]