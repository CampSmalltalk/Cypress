private
writeInDirectoryName: directoryNameOrPath fileName: fileName extension: ext visit: visitBlock
    | directory |
    directory := self directoryForDirectoryNamed: directoryNameOrPath.
    directory
        forceNewFileNamed: fileName , ext
        do: [ :file |
            visitBlock value: file ]