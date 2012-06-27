testing
isInitializer
	^ self selector = 'initialize' and: [self classIsMeta]
