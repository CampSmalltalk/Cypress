*Cypress-Definitions
asCypressMethodDefinition

	^CypressMethodDefinition 
        	className: (self methodClass isMeta ifTrue: [ self methodClass theNonMetaClass ] ifFalse: [ self methodClass ]) name
		classIsMeta: self methodClass isMeta
		selector: self selector
		category: self category
		source: self getSource
