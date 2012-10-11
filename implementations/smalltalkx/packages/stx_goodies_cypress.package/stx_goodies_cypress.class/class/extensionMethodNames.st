"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: description - contents
"
extensionMethodNames
    "lists the extension methods which are to be included in the project.
     Entries are 2-element array literals, consisting of class-name and selector."

    ^ #(
        CharacterArray withLineEndings:
        'CharacterArray class' lfString
        Array asCypressPropertyObject
        Array writeCypressJsonOn:forHtml:indent:
        Boolean writeCypressJsonOn:forHtml:indent:
        Character isSafeForHTTP
        Class asCypressClassDefinition
        Dictionary asCypressPropertyObject
        Dictionary writeCypressJsonOn:forHtml:indent:
        Number writeCypressJsonOn:forHtml:indent:
        Object asCypressPropertyObject
        String asCypressPropertyObject
        String encodeForHTTP
        String writeCypressJsonOn:forHtml:indent:
        Method asCypressMethodDefinition
        'ConfigurableFeatures class' hasCypress
        PackageId asCypressPackage
        Symbol asCypressPackage
        'ProjectDefinition class' asCypressPackage
    )
