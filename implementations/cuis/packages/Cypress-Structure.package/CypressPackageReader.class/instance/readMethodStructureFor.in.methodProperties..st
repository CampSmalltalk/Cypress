reading
readMethodStructureFor: classStructure in: entries methodProperties: methodPropertiesDict
	entries do: [ :entry | | methods isMeta |
		isMeta _ false.
		methods _ entry name = 'class'
			ifTrue: [
				isMeta _ true.
				classStructure classMethods ]
			ifFalse: [ classStructure instanceMethods ].
		(entry name = 'instance' or: [ entry name = 'class' ]) ifTrue: [
			(entry asFileDirectory entries select: [ :each |
				each name first ~= $. and: [ each name endsWith: '.st' ]]) do: [ :methodEntry |
				methodEntry readStreamDo: [ :fileStream | | category source selector timeStamp |
					category _ fileStream nextLine.
					source _ fileStream upToEnd.
					selector _ Parser new parseSelector: source.
					timeStamp _ (methodPropertiesDict
						at: (isMeta ifTrue: ['class'] ifFalse: ['instance']))
						at: selector.
					methods
						at: selector
						put:
							(CypressMethodStructure new
								 classStructure: classStructure;
								 name: selector;
								 isMetaclass: isMeta;
								 selector: selector;
								 category: category;
								 source: source;
								 timeStamp: timeStamp
								 yourself) ]]]]