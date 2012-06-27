operations
loadClassDefinition: aPatchOperation
    [ aPatchOperation loadClassDefinition ]
        on: Error
        do: [ :ex | self errors add: aPatchOperation ]