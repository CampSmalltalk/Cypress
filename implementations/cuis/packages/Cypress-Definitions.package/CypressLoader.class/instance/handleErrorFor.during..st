error handling
handleErrorFor: aPatchOperation during: aBlock
	aBlock on: Error do: [:ex | self errors add: aPatchOperation ].
