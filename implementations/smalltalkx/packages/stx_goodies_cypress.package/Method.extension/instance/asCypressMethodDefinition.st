"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: converting
"
asCypressMethodDefinition

        ^CypressMethodDefinition 
                className: (self methodClass isMeta ifTrue: [ self methodClass theNonMetaClass ] ifFalse: [ self methodClass ]) name
                classIsMeta: self methodClass isMeta
                selector: self selector
                category: self category
                source: self source
                timeStamp: self timeStamp

    "Created: / 30-08-2012 / 14:05:33 / Jan Vrany <jan.vrany@fit.cvut.cz>"
