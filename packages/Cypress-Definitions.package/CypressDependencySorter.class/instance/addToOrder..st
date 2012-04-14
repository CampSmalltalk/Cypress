private
addToOrder: aPatchOperation
	self orderedItems add: aPatchOperation.
	aPatchOperation provisions do: [:globalName | self addProvision: globalName ].
