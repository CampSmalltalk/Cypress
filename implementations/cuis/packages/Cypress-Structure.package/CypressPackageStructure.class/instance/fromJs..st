initialization
fromJs: jsObject

	name := jsObject at: 'name'.
	(jsObject at: 'contents') do: [:jsClassObject| | classStructure objectName |
		classStructure := (CypressClassStructure new)
                		packageStructure: self;
				yourself.
                (  '*.extension' match:(objectName := jsClassObject at: 'name') )
			ifTrue: [ 
				classStructure isClassExtension: true.
				self extensions add: classStructure ]
			ifFalse: [
				( '*.class' match: objectName)
					ifTrue: [ 
						classStructure isClassExtension: false.
						self classes add: classStructure ]].
		classStructure fromJs: jsClassObject].
	properties := jsObject at: 'properties.json'
