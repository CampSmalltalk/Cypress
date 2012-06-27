operations
unloadDefinition: aPatchOperation
	
	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation unloadDefinition ]
