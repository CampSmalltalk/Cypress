"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
classInstVarsAsString

    ^String streamContents:[:s|
        (properties at:'classinstvars' ifAbsent:[#()]) 
            do:[:each|s nextPutAll: each]
            separatedBy:[s space]
    ]

    "Created: / 18-09-2012 / 10:51:42 / Jan Vrany <jan.vrany@fit.cvut.cz>"
