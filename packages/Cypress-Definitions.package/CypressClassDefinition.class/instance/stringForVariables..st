private
stringForVariables: variableList
    ^ String
        streamContents: [ :stream | variableList do: [ :ea | stream nextPutAll: ea ] separatedBy: [ stream space ] ]