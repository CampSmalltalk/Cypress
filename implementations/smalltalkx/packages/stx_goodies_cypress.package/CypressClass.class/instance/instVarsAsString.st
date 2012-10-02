"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
instVarsAsString

    ^String streamContents:[:s|
        (properties at:'instvars' ifAbsent:[#()]) 
            do:[:each|s nextPutAll: each]
            separatedBy:[s space]
    ]

    "Created: / 18-09-2012 / 10:50:54 / Jan Vrany <jan.vrany@fit.cvut.cz>"
