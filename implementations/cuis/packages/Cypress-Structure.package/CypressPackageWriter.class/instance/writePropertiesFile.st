writing
writePropertiesFile

    self
        writeInDirectoryName: '.'
        fileName: 'properties'
        extension: '.json'
        visit: [:fileStream | Dictionary new writeCypressJsonOn: fileStream forHtml: true indent: 0 ]