writing
writeClassStructure: classStructure on: fileStream

    | properties |
    properties := Dictionary new.
    properties at: 'name' put: classStructure className.
    properties at: 'super' put: classStructure superclassName.
    properties at: 'instvars' put: classStructure instanceVariableNames.
    properties at: 'classinstvars' put: classStructure classInstanceVariableNames.
    properties writeCypressJsonOn: fileStream forHtml: true indent: 0