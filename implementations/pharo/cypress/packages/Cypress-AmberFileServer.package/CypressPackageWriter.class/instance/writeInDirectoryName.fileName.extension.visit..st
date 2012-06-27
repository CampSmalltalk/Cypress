private
writeInDirectoryName: directoryNameOrPath fileName: fileName extension: ext visit: visitBlock
    | directory |
    directory := self directoryForDirectoryNamed: directoryNameOrPath.
    directory
        forceNewFileNamed: fileName , ext
        do: [ :file | 
            file lineEndConvention: #'lf'.
            visitBlock value: file ]