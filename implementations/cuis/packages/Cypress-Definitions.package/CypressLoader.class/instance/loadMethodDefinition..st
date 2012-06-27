operations
loadMethodDefinition: aPatchOperation
	
	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation loadMethodDefinition ]
