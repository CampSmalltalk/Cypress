writing
writePropertiesFile

    self
        writeInDirectoryName: '.'
        fileName: 'properties'
        extension: '.json'
        visit: [:fileStream | Dictionary new writeCypressJsonOn: fileStream ]