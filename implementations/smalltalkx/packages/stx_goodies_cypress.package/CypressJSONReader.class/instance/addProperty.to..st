"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: adding
"
addProperty: anAssociation to: anObject
	"Add the property anAssociation described with key and value to anObject. Subclasses might want to refine this implementation."
	
	^ anObject 
		add: anAssociation;
		yourself
