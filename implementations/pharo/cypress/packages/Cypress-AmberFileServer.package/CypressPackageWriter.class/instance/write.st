writing
write

	self packageDirectory exists
        ifTrue: [ self packageDirectory recursiveDelete ].
    	self writePropertiesFile.
	self writePackageStructure