writing
writePackageStructureClasses:  classStructures isClassExtension: isClassExtension
    | classDirExtension |
	
    classDirExtension := isClassExtension
		ifTrue: [ '.extension' ]
		ifFalse: [ '.class' ].
    classStructures
        do: [ :classStructure | 
            | classPath instanceMethodPath classMethodPath |
            classPath := classStructure className , classDirExtension , FileDirectory slash.
	      isClassExtension
			ifTrue: [ self writeExtensionClassStructure: classStructure to: classPath ]
            	ifFalse: [ self writeClassStructure: classStructure to: classPath ].
            instanceMethodPath := classPath , 'instance' , FileDirectory slash.
            classStructure instanceMethods
                do: [ :methodStructure |  self writeMethodStructure: methodStructure to: instanceMethodPath ].
            classMethodPath := classPath , 'class' , FileDirectory slash.
            classStructure classMethods
                do: [ :methodStructure |  self writeMethodStructure: methodStructure to: classMethodPath ] ].
