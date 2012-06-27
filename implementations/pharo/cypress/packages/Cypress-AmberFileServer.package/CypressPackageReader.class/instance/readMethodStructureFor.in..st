reading
readMethodStructureFor: classStructure in: entries

    entries
        do: [ :entry | 
            | methods isMeta |
		isMeta := false.
 		methods := entry name = 'class'
                ifTrue: [ 
			isMeta := true.
			classStructure classMethods ]
		    ifFalse: [ classStructure instanceMethods ].
            (entry name = 'instance' or: [ entry name = 'class' ])
                ifTrue: [ 
                    (entry asFileDirectory entries select: [ :each | each name endsWith: '.st' ])
                        do: [ :methodEntry | 
                            methodEntry
                                readStreamDo: [ :fileStream | 
                                    | category source selector |
                                    category := fileStream nextLine.
                                    source := fileStream upToEnd.
						selector := Parser new parseSelector: source.
                                     methods 
							at: selector
							put: ((CypressMethodStructure new)
									name: selector;
									isMetaclass: isMeta;
									selector: selector;
									category: category;
									source: source;
									yourself) ] ] ] ]