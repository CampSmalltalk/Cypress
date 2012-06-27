writing
writeMethodStructure: methodStructure to:methodPath

    | filename |
    filename := self fileNameForSelector: methodStructure selector.
    self
        writeInDirectoryName: methodPath
        fileName: filename
        extension: '.st'
        visit: [:fileStream |
		fileStream
        		nextPutAll: methodStructure category;
        		newLine;
        		nextPutAll: (methodStructure source withLineEndings: String lfString) ]