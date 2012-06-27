operations
loadMethodDefinition: aPatchOperation
    [ aPatchOperation loadMethodDefinition ]
        on: Error
        do: [ :ex | self errors add: aPatchOperation ]