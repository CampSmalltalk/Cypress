"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: initialization
"
initialize
    | props |

    writerClass := CypressWriter.
    readerClass := nil.
    directory isNil ifTrue:[ ^ self ].
    directory exists ifFalse:[ ^ self ].

    ( props := directory / 'properties.json' ) exists ifTrue:[
        readerClass := CypressFileTreeReader.
        properties := CypressJSONReader parse: props.
    ].

    ( props := directory / 'properties.ston' ) exists ifTrue:[
        readerClass := CypressReader.
        properties := CypressJSONReader parse: props.
    ].

    "Created: / 17-09-2012 / 22:09:33 / Jan Vrany <jan.vrany@fit.cvut.cz>"
