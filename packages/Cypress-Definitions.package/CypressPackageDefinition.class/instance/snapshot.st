snapshotting
snapshot
    | package definitions map classMap |
    package := MCPackage named: self name.
    definitions := OrderedCollection new.
    (Class superclassOrder: package packageInfo classes)
        do: [ :cls | 
            definitions add: cls asCypressClassDefinition.
            (cls methodDictionary values sorted: [ :a :b | a selector <= b selector ])
                do: [ :method | 
                    (method category at: 1) = $*
                        ifFalse: [ definitions add: method asCypressMethodDefinition ] ].
            (cls class methodDictionary values sorted: [ :a :b | a selector <= b selector ])
                do: [ :method | 
                    (method category at: 1) = $*
                        ifFalse: [ definitions add: method asCypressMethodDefinition ] ] ].
    classMap := Dictionary new.
    Smalltalk allClasses
        do: [ :each | 
            {each.
            (each class)}
                do: [ :aClass | 
                    | defs |
                    defs := OrderedCollection new.
                    map := Dictionary new.
                    aClass organization categories
                        do: [ :category | 
                            | methods |
                            methods := aClass organization listAtCategoryNamed: category.
                            (category asLowercase beginsWith: '*' , self name asLowercase)
                                ifTrue: [ map at: category put: methods ] ].
                    (map keys sorted: [ :a :b | a <= b ])
                        do: [ :category | 
                            ((map at: category) sorted: [ :a :b | a selector <= b selector ])
                                do: [ :method | defs add: (aClass compiledMethodAt: method) asCypressMethodDefinition ] ].
                    defs notEmpty
                        ifTrue: [ classMap at: each put: defs ] ] ].
    (Class superclassOrder: classMap keys) do: [ :aClass | definitions addAll: (classMap at: aClass) ].
    ^ CypressSnapshot definitions: definitions