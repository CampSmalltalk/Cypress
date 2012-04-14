*Cypress-Definitions
asCypressMethodDefinition

	^CypressMethodDefinition 
        	className: (self methodClass isMetaclass ifTrue: [ self methodClass instanceClass ] ifFalse: [ self methodClass ]) name
		classIsMeta: self methodClass isMetaclass
		selector: self selector
		category: self category
		source: self source
