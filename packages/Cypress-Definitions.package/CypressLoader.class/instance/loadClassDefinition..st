operations
loadClassDefinition: aPatchOperation

	[ aPatchOperation loadClassDefinition ] on: Error do: [ self errors add: aPatchOperation ].
