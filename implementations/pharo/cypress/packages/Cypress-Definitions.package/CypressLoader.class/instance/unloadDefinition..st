operations
unloadDefinition: aPatchOperation
    [ aPatchOperation unloadDefinition ]
        on: Error
        do: [ :ex | self errors add: aPatchOperation ]