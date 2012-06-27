operations
loadClassDefinition: aPatchOperation

	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation loadClassDefinition ]
