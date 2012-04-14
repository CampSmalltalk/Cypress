operations
unloadDefinition: aPatchOperation
	[ aPatchOperation unloadDefinition ] on: Error do: [ self errors add: aPatchOperation ].
