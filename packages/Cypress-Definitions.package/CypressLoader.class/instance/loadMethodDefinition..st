operations
loadMethodDefinition: aPatchOperation
	[ aPatchOperation loadMethodDefinition ] on: Error do: [ self errors add: aPatchOperation ].
