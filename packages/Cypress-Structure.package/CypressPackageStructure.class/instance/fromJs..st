initialization
fromJs: jsObject

	name := jsObject at: 'name'.
	(jsObject at: 'contents') do: [:jsClassObject| | classStructure objectName |
		classStructure := (CypressClassStructure new)
                		packageStructure: self;
				yourself.
                ((objectName := jsClassObject at: 'name') match: '.extension$')
			ifTrue: [ 
				classStructure isClassExtension: true.
				self extensions add: classStructure ]
			ifFalse: [
				(objectName match: '.class$')
					ifTrue: [ 
						classStructure isClassExtension: false.
						self classes add: classStructure ]].
		classStructure fromJs: jsClassObject].
	properties := jsObject at: 'properties.json'
