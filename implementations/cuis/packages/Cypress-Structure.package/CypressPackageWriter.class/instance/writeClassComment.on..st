writing
writeClassComment: classStructure on: fileStream

    fileStream nextPutAll: (classStructure comment withLineEndings: String lfString)