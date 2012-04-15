writing
writeExtensionClassStructure: classStructure to: classPath

     self
        writeInDirectoryName: classPath
        fileName: 'properties'
        extension: '.json'
        visit: [:fileStream |  | properties |
    		properties := Dictionary new.
    		properties at: 'name' put: classStructure className.
    		properties writeCypressJsonOn: fileStream ]