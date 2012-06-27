converting
asCypressClassDefinition
	self isClassExtension ifTrue: [ ^nil ].
	^CypressClassDefinition
		name: self className
		superclassName: self superclassName
		category: self category 
		instVarNames: self instanceVariableNames
		classInstVarNames: self classInstanceVariableNames
		comment: self comment
