"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readPropertiesFor: model from: directory
    | props propFile |

    propFile := directory / self defaultFileNameForProperties.
    props := propFile exists 
        ifTrue:[CypressJSONReader parse: propFile]
        ifFalse:[Dictionary new].
    model properties: props.

    "Created: / 18-09-2012 / 09:47:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
